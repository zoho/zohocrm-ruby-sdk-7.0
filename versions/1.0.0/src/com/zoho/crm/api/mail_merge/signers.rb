require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module MailMerge
    class Signers
      include Util::Model

      # Creates an instance of Signers
      def initialize
        @recipient_name = nil
        @action_type = nil
        @recipient = nil
        @key_modified = Hash.new
      end

        # The method to get the recipient_name
        # @return A String value

      def recipient_name
        @recipient_name
      end

        # The method to set the value to recipient_name
        # @param recipient_name [String] A String

      def recipient_name=(recipient_name)
        if recipient_name!=nil and !recipient_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: recipient_name EXPECTED TYPE: String', nil, nil)
        end
        @recipient_name = recipient_name
        @key_modified['recipient_name'] = 1
      end

        # The method to get the action_type
        # @return An instance of Util::Choice

      def action_type
        @action_type
      end

        # The method to set the value to action_type
        # @param action_type [Util::Choice] An instance of Util::Choice

      def action_type=(action_type)
        if action_type!=nil and !action_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @action_type = action_type
        @key_modified['action_type'] = 1
      end

        # The method to get the recipient
        # @return An instance of Address

      def recipient
        @recipient
      end

        # The method to set the value to recipient
        # @param recipient [Address] An instance of Address

      def recipient=(recipient)
        if recipient!=nil and !recipient.is_a? Address
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: recipient EXPECTED TYPE: Address', nil, nil)
        end
        @recipient = recipient
        @key_modified['recipient'] = 1
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
