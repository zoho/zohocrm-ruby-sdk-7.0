require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaAllowedFieldMappings
    class AllowedFieldMap
      include Util::Model

      # Creates an instance of AllowedFieldMap
      def initialize
        @output_data_field_mapping = nil
        @input_data_field_mapping = nil
        @key_modified = Hash.new
      end

        # The method to get the output_data_field_mapping
        # @return An instance of Array

      def output_data_field_mapping
        @output_data_field_mapping
      end

        # The method to set the value to output_data_field_mapping
        # @param output_data_field_mapping [Array] An instance of Array

      def output_data_field_mapping=(output_data_field_mapping)
        if output_data_field_mapping!=nil and !output_data_field_mapping.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: output_data_field_mapping EXPECTED TYPE: Array', nil, nil)
        end
        @output_data_field_mapping = output_data_field_mapping
        @key_modified['output_data_field_mapping'] = 1
      end

        # The method to get the input_data_field_mapping
        # @return An instance of Array

      def input_data_field_mapping
        @input_data_field_mapping
      end

        # The method to set the value to input_data_field_mapping
        # @param input_data_field_mapping [Array] An instance of Array

      def input_data_field_mapping=(input_data_field_mapping)
        if input_data_field_mapping!=nil and !input_data_field_mapping.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: input_data_field_mapping EXPECTED TYPE: Array', nil, nil)
        end
        @input_data_field_mapping = input_data_field_mapping
        @key_modified['input_data_field_mapping'] = 1
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
