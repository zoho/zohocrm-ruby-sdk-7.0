require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module DuplicateCheckPreference
    class DuplicateCheckPreference
      include Util::Model

      # Creates an instance of DuplicateCheckPreference
      def initialize
        @type = nil
        @type_configurations = nil
        @key_modified = Hash.new
      end

        # The method to get the type
        # @return An instance of Util::Choice

      def type
        @type
      end

        # The method to set the value to type
        # @param type [Util::Choice] An instance of Util::Choice

      def type=(type)
        if type!=nil and !type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the type_configurations
        # @return An instance of Array

      def type_configurations
        @type_configurations
      end

        # The method to set the value to type_configurations
        # @param type_configurations [Array] An instance of Array

      def type_configurations=(type_configurations)
        if type_configurations!=nil and !type_configurations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type_configurations EXPECTED TYPE: Array', nil, nil)
        end
        @type_configurations = type_configurations
        @key_modified['type_configurations'] = 1
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
