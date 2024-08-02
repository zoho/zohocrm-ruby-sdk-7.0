require_relative '../util/model'

module ZOHOCRMSDK
  module UsersTerritories
    require_relative 'validation_handler'
    class ValidationWrapper
      include Util::Model
      include ValidationHandler

      # Creates an instance of ValidationWrapper
      def initialize
        @validate_before_transfer = nil
        @key_modified = Hash.new
      end

        # The method to get the validate_before_transfer
        # @return An instance of Array

      def validate_before_transfer
        @validate_before_transfer
      end

        # The method to set the value to validate_before_transfer
        # @param validate_before_transfer [Array] An instance of Array

      def validate_before_transfer=(validate_before_transfer)
        if validate_before_transfer!=nil and !validate_before_transfer.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: validate_before_transfer EXPECTED TYPE: Array', nil, nil)
        end
        @validate_before_transfer = validate_before_transfer
        @key_modified['validate_before_transfer'] = 1
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
