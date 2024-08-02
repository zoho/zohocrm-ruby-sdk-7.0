require_relative '../util/model'

module ZOHOCRMSDK
  module EmailDrafts
    class To
      include Util::Model

      # Creates an instance of To
      def initialize
        @user_name = nil
        @email = nil
        @key_modified = Hash.new
      end

        # The method to get the user_name
        # @return A String value

      def user_name
        @user_name
      end

        # The method to set the value to user_name
        # @param user_name [String] A String

      def user_name=(user_name)
        if user_name!=nil and !user_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_name EXPECTED TYPE: String', nil, nil)
        end
        @user_name = user_name
        @key_modified['user_name'] = 1
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
