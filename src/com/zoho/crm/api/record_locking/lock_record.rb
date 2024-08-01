require_relative '../util/model'

module ZOHOCRMSDK
  module RecordLocking
    class LockRecord
      include Util::Model

      # Creates an instance of LockRecord
      def initialize
        @locked_reason__s = nil
        @key_modified = Hash.new
      end

        # The method to get the locked_reason__s
        # @return A String value

      def locked_reason__s
        @locked_reason__s
      end

        # The method to set the value to locked_reason__s
        # @param locked_reason__s [String] A String

      def locked_reason__s=(locked_reason__s)
        if locked_reason__s!=nil and !locked_reason__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locked_reason__s EXPECTED TYPE: String', nil, nil)
        end
        @locked_reason__s = locked_reason__s
        @key_modified['Locked_Reason__s'] = 1
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
