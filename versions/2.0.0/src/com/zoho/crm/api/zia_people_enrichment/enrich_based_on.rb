require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class EnrichBasedOn
      include Util::Model

      # Creates an instance of EnrichBasedOn
      def initialize
        @social = nil
        @name = nil
        @company = nil
        @email = nil
        @key_modified = Hash.new
      end

        # The method to get the social
        # @return An instance of Social

      def social
        @social
      end

        # The method to set the value to social
        # @param social [Social] An instance of Social

      def social=(social)
        if social!=nil and !social.is_a? Social
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: social EXPECTED TYPE: Social', nil, nil)
        end
        @social = social
        @key_modified['social'] = 1
      end

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
      end

        # The method to get the company
        # @return An instance of Company

      def company
        @company
      end

        # The method to set the value to company
        # @param company [Company] An instance of Company

      def company=(company)
        if company!=nil and !company.is_a? Company
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: company EXPECTED TYPE: Company', nil, nil)
        end
        @company = company
        @key_modified['company'] = 1
      end

        # The method to get the email
        # @return A String value

      def email
        @email
      end

        # The method to set the value to email
        # @param email [String] A String

      def email=(email)
        if email!=nil and !email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
        end
        @email = email
        @key_modified['email'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end
