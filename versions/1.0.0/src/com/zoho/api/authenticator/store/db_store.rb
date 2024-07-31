require_relative 'token_store'
require_relative '../oauth_token'
require_relative '../../../crm/api/util/constants'

module ZOHOCRMSDK
  module Store
    # This class stores the user token details to the MySQL DataBase.
    class DBStore < TokenStore
      attr_reader :user_name, :password, :port_number, :host, :database_name, :table_name

      # Creates an DBStore class instance with the specified parameters.
      # @param host [string] A String containing the DataBase host name.
      # @param database_name A String containing the DataBase name.
      # @param table_name A String containing the table name.
      # @param user_name A String containing the DataBase user name.
      # @param password A String containing the DataBase password.
      # @param port_number A String containing the DataBase port number.
      def initialize(host: Constants::MYSQL_HOST, database_name: Constants::MYSQL_DATABASE_NAME , table_name: Constants::MYSQL_TABLE_NAME, user_name: Constants::MYSQL_USER_NAME, password: '', port_number: Constants::MYSQL_PORT_NUMBER )
        require 'mysql2' unless Object.const_defined?(:Mysql2)
        @host = host
        @database_name = database_name
        @table_name = table_name
        @user_name = user_name
        @password = password
        @port_number = port_number
      end


      def find_token(token)
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        oauth_token = token
        begin
          query = 'select * from '.concat(@table_name)
          if !oauth_token.user_signature.nil?
            name = oauth_token.user_signature.name
            if !name.nil? && name.length > 0
              query.concat(" where user_name='").concat(name).concat("'")
            end
          elsif !oauth_token.access_token.nil? && are_all_objects_null(oauth_token.client_id, oauth_token.client_secret)
            query.concat(" where access_token='").concat(oauth_token.access_token).concat("'")
          elsif (!oauth_token.refresh_token.nil? || !oauth_token.grant_token.nil?) && !oauth_token.client_secret.nil? && !oauth_token.client_id.nil?
            if !oauth_token.grant_token.nil? && oauth_token.grant_token.length > 0
              query.concat(" where grant_token='").concat(oauth_token.grant_token).concat("'")
            elsif !oauth_token.refresh_token.nil? && oauth_token.refresh_token.length > 0
              query.concat(" where refresh_token='").concat(oauth_token.refresh_token).concat("'")
            end
          end
          query.concat(' limit 1')
          result = con.query(query)
          if result.count == 0
            return nil
          else
            result.each do |row|
              set_merge_data(oauth_token, row)
              break
            end
          end
        rescue Mysql2::Error => e
          raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_DB_ERROR1, nil, e)
        ensure
          con.close
        end
        oauth_token
      end

      def save_token(token)
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        begin
          if token.is_a? Authenticator::OAuthToken
            oauth_token = token
            query = 'update '.concat(@table_name).concat(' set ')
            if !oauth_token.user_signature.nil?
              name = oauth_token.user_signature.name
              if !name.nil? && name.length > 0
                query.concat(set_token(oauth_token)).concat(" where user_name='").concat(name).concat("'")
              end
            elsif !oauth_token.access_token.nil? && oauth_token.access_token.length > 0 && are_all_objects_null(oauth_token.client_id, oauth_token.client_secret)
              query.concat(set_token(oauth_token)).concat(" where access_token='").concat(oauth_token.access_token).concat("'")
            elsif ((!oauth_token.refresh_token.nil? && oauth_token.refresh_token.length > 0) || (!oauth_token.grant_token.nil? && oauth_token.grant_token.length > 0)) && !oauth_token.client_id.nil? && !oauth_token.client_secret.nil?
              if !oauth_token.grant_token.nil? && oauth_token.grant_token.length > 0
                query.concat(set_token(oauth_token)).concat(" where grant_token='").concat(oauth_token.grant_token).concat("'")
              elsif !oauth_token.refresh_token.nil? && oauth_token.refresh_token.length > 0
                query.concat(set_token(oauth_token)).concat(" where refresh_token='").concat(oauth_token.refresh_token).concat("'")
              end
            end
            query.concat(' limit 1')
            result = con.query(query)
            if con.affected_rows == 0
              if !oauth_token.id.nil? || !oauth_token.user_signature.nil?
                if oauth_token.refresh_token.nil? && oauth_token.grant_token.nil? && oauth_token.access_token.nil?
                  raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_DB_ERROR1, nil, nil)
                end
              end
              if oauth_token.id.nil?
                new_id = generate_id.to_s
                oauth_token.id = new_id
              end
              query = "insert into #{@table_name}(id,user_name,client_id,client_secret,refresh_token,access_token,grant_token,expiry_time,redirect_url,api_domain) VALUES (?,?,?,?,?,?,?,?,?,?)"
              value = {
                id: token.id,
                user_name: token.user_signature.nil? ? nil : token.user_signature.name,
                client_id: token.client_id,
                client_secret: token.client_secret,
                refresh_token: token.refresh_token,
                access_token: token.access_token,
                grant_token: token.grant_token,
                expiry_time: token.expires_in,
                redirect_url: token.redirect_url,
                api_domain: token.api_domain
              }
              statement = con.prepare(query)
              statement.execute(*value.values)
            end
            # end
          end
        rescue Mysql2::Error => e
          raise SDKException.new(Constants::TOKEN_STORE, Constants::SAVE_TOKEN_DB_ERROR, nil, e)
        ensure
          con.close
        end
      end

      def delete_token(id)
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        query = 'delete from '.concat(@table_name).concat(" where id='").concat(id).concat("';")
        con.query(query)
        con.close
      rescue Mysql2::Error => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKEN_DB_ERROR, nil, e)
      end

      def delete_tokens
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)

        query = "delete from #{@table_name}"

        con.query(query)

        con.close
      rescue Mysql2::Error => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKENS_DB_ERROR, nil, e)
      end

      def get_tokens
        tokens = []
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        query = "select * from #{@table_name}"
        rs = con.query(query)
        con.close
        rs.each do |row|
          oauth_token = Authenticator::OAuthToken.initialize
          set_merge_data(oauth_token, row)
          tokens.push(oauth_token)
        end
        tokens
      rescue Mysql2::Error => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKENS_DB_ERROR, nil, e)
      end

      def find_token_by_id(id)
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        query = "select * from #{@table_name} where id='#{id}'"
        rs = con.query(query)
        con.close
        rs.each do |row|
          if id == row[Constants::ID]
            oauth_token = Authenticator::OAuthToken.initialize
            set_merge_data(oauth_token, row)
            return oauth_token
          end
        end
        nil
      rescue Mysql2::Error => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_BY_ID_DB_ERROR, nil, e)
      end


      def set_merge_data(oauth_token, result)
        if oauth_token.is_a? Authenticator::OAuthToken
          if oauth_token.id.nil? || oauth_token.id == ""
            oauth_token.id = result[Constants::ID]
          end
          if oauth_token.user_signature.nil?
            name = result[Constants::USER_NAME]
            unless name.nil?
              oauth_token.user_signature = UserSignature.new(name)
            end
          end
          if oauth_token.client_id.nil?
            oauth_token.client_id = result[Constants::CLIENT_ID]
          end
          if oauth_token.client_secret.nil?
            oauth_token.client_secret = result[Constants::CLIENT_SECRET]
          end
          if oauth_token.refresh_token.nil?
            oauth_token.refresh_token = result[Constants::REFRESH_TOKEN]
          end
          if oauth_token.access_token.nil?
            oauth_token.access_token = result[Constants::ACCESS_TOKEN]
          end
          if oauth_token.grant_token.nil?
            oauth_token.grant_token = result[Constants::GRANT_TOKEN]
          end
          if oauth_token.expires_in.nil?
            expires_in = result[Constants::EXPIRY_TIME]
            unless expires_in.nil?
              oauth_token.expires_in = expires_in.to_s
            end
          end
          if oauth_token.redirect_url.nil?
            oauth_token.redirect_url = result[Constants::REDIRECT_URL]
          end
          if oauth_token.api_domain.nil?
            oauth_token.api_domain = result[Constants::API_DOMAIN]
          end
        end
      end
      def set_token(oauth_token)
        query = []
        unless oauth_token.user_signature.nil?
          name = oauth_token.user_signature.name
          if !name.nil? && name.length > 0
            query.push(set_token_info(Constants::USER_NAME, name))
          end
        end
        unless oauth_token.client_id.nil?
          query.push(set_token_info(Constants::CLIENT_ID, oauth_token.client_id))
        end
        unless oauth_token.client_secret.nil?
          query.push(set_token_info(Constants::CLIENT_SECRET, oauth_token.client_secret))
        end
        unless oauth_token.refresh_token.nil?
          query.push(set_token_info(Constants::REFRESH_TOKEN, oauth_token.refresh_token))
        end
        unless oauth_token.access_token.nil?
          query.push(set_token_info(Constants::ACCESS_TOKEN, oauth_token.access_token))
        end
        unless oauth_token.grant_token.nil?
          query.push(set_token_info(Constants::GRANT_TOKEN, oauth_token.grant_token))
        end
        unless oauth_token.expires_in.nil?
          query.push(set_token_info(Constants::EXPIRY_TIME, oauth_token.expires_in))
        end
        unless oauth_token.redirect_url.nil?
          query.push(set_token_info(Constants::REDIRECT_URL, oauth_token.redirect_url))
        end
        unless oauth_token.api_domain.nil?
          query.push(set_token_info(Constants::API_DOMAIN, oauth_token.api_domain))
        end
        query.join(',')
      end

      def set_token_info(key, value)
        key.to_s + "='" + value.to_s + "'"
      end

      def are_all_objects_null(*objects)
        objects.all?(&:nil?)
      end

      def generate_id
        id = 0
        con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
        query = "select max(id) as id from #{@table_name} ;"
        result = con.query(query)
        con.close
        result.each do |row|
          max = row[Constants::ID].to_i
          unless max.nil?
            return max + 1
          end
        end
        id
      rescue Mysql2::Error => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GENERATE_TOKEN_ID_ERROR, nil, e)
      end
    end
  end
end