require_relative '../util/model'

module ZOHOCRMSDK
  module UnblockEmail
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @ids = nil
        @unblock_fields = nil
        @key_modified = Hash.new
      end

        # The method to get the ids
        # @return An instance of Array

      def ids
        @ids
      end

        # The method to set the value to ids
        # @param ids [Array] An instance of Array

      def ids=(ids)
        if ids!=nil and !ids.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ids EXPECTED TYPE: Array', nil, nil)
        end
        @ids = ids
        @key_modified['ids'] = 1
      end

        # The method to get the unblock_fields
        # @return An instance of Array

      def unblock_fields
        @unblock_fields
      end

        # The method to set the value to unblock_fields
        # @param unblock_fields [Array] An instance of Array

      def unblock_fields=(unblock_fields)
        if unblock_fields!=nil and !unblock_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unblock_fields EXPECTED TYPE: Array', nil, nil)
        end
        @unblock_fields = unblock_fields
        @key_modified['unblock_fields'] = 1
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
