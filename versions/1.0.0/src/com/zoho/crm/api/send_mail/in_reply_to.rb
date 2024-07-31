require_relative '../util/model'

module ZOHOCRMSDK
  module SendMail
    class InReplyTo
      include Util::Model

      # Creates an instance of InReplyTo
      def initialize
        @message_id = nil
        @owner = nil
        @key_modified = Hash.new
      end

        # The method to get the message_id
        # @return A String value

      def message_id
        @message_id
      end

        # The method to set the value to message_id
        # @param message_id [String] A String

      def message_id=(message_id)
        if message_id!=nil and !message_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: message_id EXPECTED TYPE: String', nil, nil)
        end
        @message_id = message_id
        @key_modified['message_id'] = 1
      end

        # The method to get the owner
        # @return An instance of Owner

      def owner
        @owner
      end

        # The method to set the value to owner
        # @param owner [Owner] An instance of Owner

      def owner=(owner)
        if owner!=nil and !owner.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: Owner', nil, nil)
        end
        @owner = owner
        @key_modified['owner'] = 1
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
