require_relative '../util/model'

module ZOHOCRMSDK
  module CancelMeetings
    class Notify
      include Util::Model

      # Creates an instance of Notify
      def initialize
        @send_cancelling_mail = nil
        @key_modified = Hash.new
      end

        # The method to get the send_cancelling_mail
        # @return A Boolean value

      def send_cancelling_mail
        @send_cancelling_mail
      end

        # The method to set the value to send_cancelling_mail
        # @param send_cancelling_mail [Boolean] A Boolean

      def send_cancelling_mail=(send_cancelling_mail)
        if send_cancelling_mail!=nil and ! [true, false].include?send_cancelling_mail
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: send_cancelling_mail EXPECTED TYPE: Boolean', nil, nil)
        end
        @send_cancelling_mail = send_cancelling_mail
        @key_modified['send_cancelling_mail'] = 1
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
