require_relative '../util/model'

module ZOHOCRMSDK
  module APIs
    class SupportedAPI
      include Util::Model

      # Creates an instance of SupportedAPI
      def initialize
        @path = nil
        @operation_types = nil
        @key_modified = Hash.new
      end

        # The method to get the path
        # @return A String value

      def path
        @path
      end

        # The method to set the value to path
        # @param path [String] A String

      def path=(path)
        if path!=nil and !path.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: path EXPECTED TYPE: String', nil, nil)
        end
        @path = path
        @key_modified['path'] = 1
      end

        # The method to get the operation_types
        # @return An instance of Array

      def operation_types
        @operation_types
      end

        # The method to set the value to operation_types
        # @param operation_types [Array] An instance of Array

      def operation_types=(operation_types)
        if operation_types!=nil and !operation_types.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: operation_types EXPECTED TYPE: Array', nil, nil)
        end
        @operation_types = operation_types
        @key_modified['operation_types'] = 1
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
