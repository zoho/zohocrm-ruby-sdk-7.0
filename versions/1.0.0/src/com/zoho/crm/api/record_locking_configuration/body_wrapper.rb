require_relative '../util/model'

module ZOHOCRMSDK
  module RecordLockingConfiguration
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @record_locking_configurations = nil
        @key_modified = Hash.new
      end

        # The method to get the record_locking_configurations
        # @return An instance of Array

      def record_locking_configurations
        @record_locking_configurations
      end

        # The method to set the value to record_locking_configurations
        # @param record_locking_configurations [Array] An instance of Array

      def record_locking_configurations=(record_locking_configurations)
        if record_locking_configurations!=nil and !record_locking_configurations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_locking_configurations EXPECTED TYPE: Array', nil, nil)
        end
        @record_locking_configurations = record_locking_configurations
        @key_modified['record_locking_configurations'] = 1
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
