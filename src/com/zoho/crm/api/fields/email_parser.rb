require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class EmailParser
      include Util::Model

      # Creates an instance of EmailParser
      def initialize
        @fields_update_supported = nil
        @record_operations_supported = nil
        @key_modified = Hash.new
      end

        # The method to get the fields_update_supported
        # @return A Boolean value

      def fields_update_supported
        @fields_update_supported
      end

        # The method to set the value to fields_update_supported
        # @param fields_update_supported [Boolean] A Boolean

      def fields_update_supported=(fields_update_supported)
        if fields_update_supported!=nil and ! [true, false].include?fields_update_supported
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields_update_supported EXPECTED TYPE: Boolean', nil, nil)
        end
        @fields_update_supported = fields_update_supported
        @key_modified['fields_update_supported'] = 1
      end

        # The method to get the record_operations_supported
        # @return A Boolean value

      def record_operations_supported
        @record_operations_supported
      end

        # The method to set the value to record_operations_supported
        # @param record_operations_supported [Boolean] A Boolean

      def record_operations_supported=(record_operations_supported)
        if record_operations_supported!=nil and ! [true, false].include?record_operations_supported
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_operations_supported EXPECTED TYPE: Boolean', nil, nil)
        end
        @record_operations_supported = record_operations_supported
        @key_modified['record_operations_supported'] = 1
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
