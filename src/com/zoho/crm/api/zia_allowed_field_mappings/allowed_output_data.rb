require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaAllowedFieldMappings
    class AllowedOutputData
      include Util::Model

      # Creates an instance of AllowedOutputData
      def initialize
        @enrich_field = nil
        @crm_fields = nil
        @key_modified = Hash.new
      end

        # The method to get the enrich_field
        # @return An instance of EnrichField

      def enrich_field
        @enrich_field
      end

        # The method to set the value to enrich_field
        # @param enrich_field [EnrichField] An instance of EnrichField

      def enrich_field=(enrich_field)
        if enrich_field!=nil and !enrich_field.is_a? EnrichField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enrich_field EXPECTED TYPE: EnrichField', nil, nil)
        end
        @enrich_field = enrich_field
        @key_modified['enrich_field'] = 1
      end

        # The method to get the crm_fields
        # @return An instance of Array

      def crm_fields
        @crm_fields
      end

        # The method to set the value to crm_fields
        # @param crm_fields [Array] An instance of Array

      def crm_fields=(crm_fields)
        if crm_fields!=nil and !crm_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: crm_fields EXPECTED TYPE: Array', nil, nil)
        end
        @crm_fields = crm_fields
        @key_modified['crm_fields'] = 1
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
