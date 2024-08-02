require_relative '../util/model'

module ZOHOCRMSDK
  module AssociateEmail
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @emails = nil
        @key_modified = Hash.new
      end

        # The method to get the emails
        # @return An instance of Array

      def emails
        @emails
      end

        # The method to set the value to emails
        # @param emails [Array] An instance of Array

      def emails=(emails)
        if emails!=nil and !emails.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: emails EXPECTED TYPE: Array', nil, nil)
        end
        @emails = emails
        @key_modified['Emails'] = 1
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
