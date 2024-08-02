require_relative '../util/model'

module ZOHOCRMSDK
  module DuplicateCheckPreference
    class FieldMappings
      include Util::Model

      # Creates an instance of FieldMappings
      def initialize
        @current_field = nil
        @mapped_field = nil
        @key_modified = Hash.new
      end

        # The method to get the current_field
        # @return An instance of CurrentField

      def current_field
        @current_field
      end

        # The method to set the value to current_field
        # @param current_field [CurrentField] An instance of CurrentField

      def current_field=(current_field)
        if current_field!=nil and !current_field.is_a? CurrentField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: current_field EXPECTED TYPE: CurrentField', nil, nil)
        end
        @current_field = current_field
        @key_modified['current_field'] = 1
      end

        # The method to get the mapped_field
        # @return An instance of MappedField

      def mapped_field
        @mapped_field
      end

        # The method to set the value to mapped_field
        # @param mapped_field [MappedField] An instance of MappedField

      def mapped_field=(mapped_field)
        if mapped_field!=nil and !mapped_field.is_a? MappedField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mapped_field EXPECTED TYPE: MappedField', nil, nil)
        end
        @mapped_field = mapped_field
        @key_modified['mapped_field'] = 1
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
