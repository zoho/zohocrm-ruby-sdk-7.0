require 'uri'
require 'net/http'
require 'json'
require 'monitor'

require_relative 'token'
require_relative '../../crm/api/util/constants'
require_relative '../logger/sdk_logger'
require_relative '../../crm/api/exception/sdk_exception'
require_relative '../../crm/api/dc/datacenter'

module ZOHOCRMSDK
  module Authenticator
    # This class gets and refreshes the tokens based on the expiry time.
    class OAuthToken < Token
      attr_accessor :client_id, :client_secret, :redirect_url, :grant_token, :refresh_token, :access_token, :user_signature, :id, :expires_in, :api_domain, :find_user
      @@sync_lock = Monitor.new


      def self.initialize()
        new(id: "")
      end

      # Creates an OAuthToken class instance with the specified parameters.
      # @param client_id [string] A String containing the OAuth client id.
      # @param client_secret [string] A String containing the OAuth client secret.
      # @param grant_token [string]  A String containing the grant token.
      # @param refresh_token [string] A String containing the refresh token.
      # @param redirect_url [string]  A String containing the OAuth redirect URL.
      # @param id [string] A String containing ID
      # @param find_user [Boolean] A String containing the OAuth expires_time

      def initialize(client_id: nil, client_secret: nil, grant_token: nil, refresh_token: nil, redirect_url: nil, id: nil, access_token: nil, user_signature: nil, find_user: true)
        error = {}

        if grant_token.nil? && refresh_token.nil? && id.nil? && access_token.nil? && user_signature.nil?
          raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::MANDATORY_KEY_ERROR, Constants::OAUTH_MANDATORY_KEYS)
        end

        if id.nil? and access_token.nil? and user_signature.nil?
          unless client_id.is_a?(String)
            error[Constants::ERROR_HASH_FIELD] = Constants::CLIENT_ID

            error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

            error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

            raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

          end

          unless client_secret.is_a?(String)
            error[Constants::ERROR_HASH_FIELD] = Constants::CLIENT_SECRET

            error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

            error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

            raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

          end

          if !grant_token.nil? && !grant_token.is_a?(String)
            error[Constants::ERROR_HASH_FIELD] = Constants::GRANT_TOKEN

            error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

            error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

            raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

          end

          if !refresh_token.nil? && !refresh_token.is_a?(String)
            error[Constants::ERROR_HASH_FIELD] = Constants::REFRESH_TOKEN

            error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

            error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

            raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

          end

          if !redirect_url.nil? && !redirect_url.is_a?(String)
            error[Constants::ERROR_HASH_FIELD] = Constants::REDIRECT_URL

            error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

            error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

            raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

          end
        end

        if !id.nil? && !id.is_a?(String)
          error[Constants::ERROR_HASH_FIELD] = Constants::ID

          error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

          error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

          raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

        end

        if !access_token.nil? && !access_token.is_a?(String)
          error[Constants::ERROR_HASH_FIELD] = Constants::ACCESS_TOKEN

          error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

          error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

          raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)
        end

        if !user_signature.nil? && !user_signature.is_a?(UserSignature)
          error[Constants::ERROR_HASH_FIELD] = Constants::USER_NAME

          error[Constants::ERROR_HASH_EXPECTED_TYPE] = Constants.USER_SIGNATURE_ERROR_MESSAGE

          error[Constants::ERROR_HASH_CLASS] = OAuthToken.class
        end

        @client_id = client_id

        @client_secret = client_secret

        @redirect_url = redirect_url

        @refresh_token = refresh_token

        @grant_token = grant_token

        @access_token = access_token

        @expires_in = nil

        @user_signature = user_signature

        @id = id

        @api_domain = nil

        @find_user = find_user
      end

      def generate_token
        get_token
      end

      def get_token
        initializer = Initializer.get_initializer
        store = initializer.store
        oauth_token = nil
        if !@id.nil?
          oauth_token = store.find_token_by_id(@id)
          merge_objects(self, oauth_token)
          oauth_token.find_user = @find_user if !oauth_token.nil?
        else
          oauth_token = store.find_token(self)
        end
        if oauth_token.nil?
          unless @user_signature.nil?
            check_token_details
          end

          oauth_token = self
        end
        if oauth_token.api_domain.nil? || oauth_token.api_domain.length <= 0
          if initializer.environment.nil?
            raise SDKException.new(Constants::ENVIRONMENT_ERROR_1, "#{Constants::ENVIRONMENT_ERROR_MESSAGE} : ")
          end

          oauth_token.api_domain = initializer.environment.url
        end
        environment = DC::DataCenter.get(oauth_token.api_domain)
        if !environment.nil?
          begin
            initializer.instance_variable_set("@#{Constants::ENVIRONMENT}", environment)
          rescue StandardError => e
            raise SDKException.new(nil, "#{Constants::ENVIRONMENT_ERROR_RESPONSE} : ", nil, e)
          end
        else
          if initializer.environment.nil?
            raise SDKException.new(Constants::ENVIRONMENT_ERROR_1, "#{Constants::ENVIRONMENT_ERROR_MESSAGE} : ", nil, nil)
          end
        end
        url = initializer.environment.accounts_url
        save = false
        if oauth_token.access_token.nil? || oauth_token.access_token.length == 0
          if !oauth_token.refresh_token.nil? && oauth_token.refresh_token.length > 0
            SDKLog::SDKLogger.info(Constants::ACCESS_TOKEN_USING_REFRESH_TOKEN_MESSAGE)
            oauth_token.refresh_access_token(oauth_token, url)
          else
            SDKLog::SDKLogger.info(Constants::ACCESS_TOKEN_USING_GRANT_TOKEN_MESSAGE)
            oauth_token.generate_access_token(oauth_token, url)
          end
          save = true
        elsif !oauth_token.expires_in.nil? && oauth_token.expires_in.to_s.length > 0 && (oauth_token.expires_in.to_f - get_current_time_in_millis < 5000)
          SDKLog::SDKLogger.info(Constants::REFRESH_TOKEN_MESSAGE)
          oauth_token.refresh_access_token(oauth_token, url)
          save = true
        elsif oauth_token.expires_in.nil? && !oauth_token.access_token.nil? && oauth_token.id.nil?
          save = true
        end
        if save
          begin
            if oauth_token.user_signature.nil? && oauth_token.find_user
              begin
                user_name = Util::Utility.get_user_name(oauth_token.access_token)
                unless user_name.nil?
                  oauth_token.user_signature = UserSignature.new(user_name)
                end
              rescue StandardError => e
                SDKLog::SDKLogger.severe(Constants::API_EXCEPTION, e)
              end
            end
            store.save_token(oauth_token)
          rescue StandardError=> e
            raise SDKException.new(nil, Constants::SAVE_TOKEN_ERROR, nil, e)
          end
        end
        oauth_token.access_token
      end

      def authenticate(url_connection)
        if url_connection.is_a?(Util::APIHTTPConnector) && !url_connection.headers.key?(Constants::AUTHORIZATION)
          url_connection.headers.store(Constants::AUTHORIZATION, Constants::OAUTH_HEADER_PREFIX + get_token)
        end
      end

      def merge_objects(first, second)
        fields = first.instance_variables
        fields.each do |field|
          field_name = field.to_s.sub(/^@/, '')
          if Constants::OAUTH_TOKEN_FIELDS.include?(field_name)
            first_value = first.instance_variable_get(field)
            second_value = second.instance_variable_get(field)
            value = (first_value.nil? ? second_value : first_value)
            first.instance_variable_set(field, value)
          end
        end
      end

      def remove
        begin
          if Initializer.get_initializer.nil?
            raise SDKException.new(Constants::SDK_UNINITIALIZATION_ERROR, Constants::SDK_UNINITIALIZATION_MESSAGE, nil, nil)
          end
          Initializer.get_initializer.store.delete_token(self.id)
        rescue SDKException => e
          raise e
        rescue StandardError => e
          raise SDKException.new(nil, nil, nil, e)
        end
      end

      def generate_access_token(oauth_token, url)
        json_body = {}

        json_body[Constants::CLIENT_ID] = oauth_token.client_id

        json_body[Constants::CLIENT_SECRET] = oauth_token.client_secret

        json_body[Constants::REDIRECT_URI] = oauth_token.redirect_url unless oauth_token.redirect_url.nil?

        json_body[Constants::GRANT_TYPE] = Constants::GRANT_TYPE_AUTH_CODE

        json_body[Constants::CODE] = oauth_token.grant_token

        response = get_response_from_server(json_body, url)

        begin
          parse_response(response)
        rescue SDKException => e
          raise e
        rescue StandardError => e
          raise SDKException.new(nil, Constants::ACCESS_TOKEN_ERROR, nil, e)
        end
        self
      end

      def refresh_access_token(oauth_token, url)
        json_body = {}

        json_body[Constants::CLIENT_ID] = oauth_token.client_id

        json_body[Constants::CLIENT_SECRET] = oauth_token.client_secret

        json_body[Constants::GRANT_TYPE] = Constants::REFRESH_TOKEN

        json_body[Constants::REFRESH_TOKEN] = oauth_token.refresh_token

        response = get_response_from_server(json_body, url)

        begin
          parse_response(response)
        rescue SDKException => e
          raise e
        rescue StandardError => e
          raise SDKException.new(nil, Constants::REFRESH_TOKEN_ERROR, nil, e)
        end
        self
      end

      def parse_response(response)
        response_json = JSON.parse(response)

        unless response_json.key? Constants::ACCESS_TOKEN
          raise SDKException.new(Constants::INVALID_CLIENT_ERROR, response_json[Constants::ERROR_KEY], nil, nil)
        end

        @access_token = response_json[Constants::ACCESS_TOKEN]

        @expires_in = get_token_expiry_time(response_json)

        @refresh_token = response_json[Constants::REFRESH_TOKEN] if response_json.key? Constants::REFRESH_TOKEN

        @api_domain = response_json[Constants::API_DOMAIN] if response_json.key? Constants::API_DOMAIN
        self
      end

      def get_response_from_server(json_body, accounts_url)
        url = URI(accounts_url)

        http = Net::HTTP.new(url.host, url.port)

        http.use_ssl = true

        request = Net::HTTP::Post.new(url.request_uri)
        request.add_field(Constants::USER_AGENT_KEY, Constants::USER_AGENT)
        request.set_form(json_body, Constants::APPLICATION_FORM_URLENCODED)

        response = http.request(request)

        response.body
      rescue StandardError => e
        raise SDKException.new(nil, nil, nil, e)
      end

      def get_token_expiry_time(response_json)
        expires_in = response_json[Constants::EXPIRES_IN]

        expires_in *= 1000 unless response_json.key? Constants::EXPIRES_IN_SEC

        expires_in += get_current_time_in_millis

        expires_in
      end

      def revoke_refresh_token(refresh_token, url)
        request_params = Hash.new

        request_params[Constants::Token] = refresh_token

        response = ""

        begin
          response = get_response_from_server(request_params, url)

          response_json = JSON.parse(response)

          if response_json != nil && response_json[Constants::Status] && response_json[Constants::STATUS] == Constants::SUCCESS
            return true
          end
          return false
        rescue JSON::ParserError => e
          raise SDKException.new(nil, Constants::PARSE_RESPONSE + " : " + response,nil, e)
        rescue SDKException => e
          raise e
        rescue StandardError => e
          raise SDKException.new(nil, Constants::REVOKE_TOKEN_ERROR, nil, e)
        end
      end

      def revoke(id)
        begin
          if Initializer.get_initializer == nil
            raise SDKException.new(Constants::SDK_UNINITIALIZATION_ERROR, Constants::SDK_UNINITIALIZATION_MESSAGE, nil, nil)
          end
          initializer = Initializer.get_initializer

          store = initializer.store

          url = initializer.environment.accounts_url

          is_revoke = false

          oauth_token = Authenticator::OAuthToken.initialize

          oauth_token.id = id

          store.find_token(oauth_token)

          if !oauth_token.nil? && !oauth_token.refresh_token.nil?
            is_revoke = revoke_refresh_token(oauth_token.refresh_token, url + Constants::REVOKE_URL)
            SDKLog::SDKLogger.info(Constants::ID + " : " + id.to_s + Constants::REFRESH_TOKEN_REMOVED.to_s)
          else
            SDKLog::SDKLogger.warn(Constants::ID + " : " + id.to_s + Constants::TOKEN_NOT_FOUND.to_s)
          end
          is_revoke
        rescue SDKException => e
          raise e
        rescue StandardError => e
          raise SDKException.new(nil, nil, nil, e)
        end
      end

      def check_token_details
        if are_all_objects_null(self.refresh_token, self.grant_token)
          raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::GET_TOKEN_BY_USER_NAME_ERROR + " - " + Constants::OAUTH_MANDATORY_KEYS2.join(", ") , nil, nil)
        end
      end

      def are_all_objects_null(*objects)
        objects.all?(&:nil?)
      end
      def get_current_time_in_millis
        (Time.now.to_f * 1000).to_i
      end
    end
  end
end