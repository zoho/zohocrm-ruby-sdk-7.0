require_relative '../util/model'

module ZOHOCRMSDK
  module Definition
    class MinifiedProperty
      include Util::Model

      # Creates an instance of MinifiedProperty
      def initialize
        @read_only = nil
        @api_name = nil
        @data_type = nil
        @length = nil
        @required = nil
        @properties = nil
        @key_modified = Hash.new
      end

        # The method to get the read_only
        # @return A Boolean value

      def read_only
        @read_only
      end

        # The method to set the value to read_only
        # @param read_only [Boolean] A Boolean

      def read_only=(read_only)
        if read_only!=nil and ! [true, false].include?read_only
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: read_only EXPECTED TYPE: Boolean', nil, nil)
        end
        @read_only = read_only
        @key_modified['read_only'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the data_type
        # @return A String value

      def data_type
        @data_type
      end

        # The method to set the value to data_type
        # @param data_type [String] A String

      def data_type=(data_type)
        if data_type!=nil and !data_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_type EXPECTED TYPE: String', nil, nil)
        end
        @data_type = data_type
        @key_modified['data_type'] = 1
      end

        # The method to get the length
        # @return A Integer value

      def length
        @length
      end

        # The method to set the value to length
        # @param length [Integer] A Integer

      def length=(length)
        if length!=nil and !length.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: length EXPECTED TYPE: Integer', nil, nil)
        end
        @length = length
        @key_modified['length'] = 1
      end

        # The method to get the required
        # @return A Boolean value

      def required
        @required
      end

        # The method to set the value to required
        # @param required [Boolean] A Boolean

      def required=(required)
        if required!=nil and ! [true, false].include?required
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: required EXPECTED TYPE: Boolean', nil, nil)
        end
        @required = required
        @key_modified['required'] = 1
      end

        # The method to get the properties
        # @return An instance of Array

      def properties
        @properties
      end

        # The method to set the value to properties
        # @param properties [Array] An instance of Array

      def properties=(properties)
        if properties!=nil and !properties.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: properties EXPECTED TYPE: Array', nil, nil)
        end
        @properties = properties
        @key_modified['properties'] = 1
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
