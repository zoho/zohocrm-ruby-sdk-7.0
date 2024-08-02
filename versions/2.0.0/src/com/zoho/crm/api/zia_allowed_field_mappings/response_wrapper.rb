require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaAllowedFieldMappings
    class ResponseWrapper
      include Util::Model

      # Creates an instance of ResponseWrapper
      def initialize
        @allowed_field_mappings = nil
        @key_modified = Hash.new
      end

        # The method to get the allowed_field_mappings
        # @return An instance of AllowedFieldMap

      def allowed_field_mappings
        @allowed_field_mappings
      end

        # The method to set the value to allowed_field_mappings
        # @param allowed_field_mappings [AllowedFieldMap] An instance of AllowedFieldMap

      def allowed_field_mappings=(allowed_field_mappings)
        if allowed_field_mappings!=nil and !allowed_field_mappings.is_a? AllowedFieldMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allowed_field_mappings EXPECTED TYPE: AllowedFieldMap', nil, nil)
        end
        @allowed_field_mappings = allowed_field_mappings
        @key_modified['allowed_field_mappings'] = 1
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
