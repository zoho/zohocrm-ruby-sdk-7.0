require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaEnrichment
    class InputData
      include Util::Model

      # Creates an instance of InputData
      def initialize
        @enrich_field = nil
        @crm_field = nil
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

        # The method to get the crm_field
        # @return An instance of CrmField

      def crm_field
        @crm_field
      end

        # The method to set the value to crm_field
        # @param crm_field [CrmField] An instance of CrmField

      def crm_field=(crm_field)
        if crm_field!=nil and !crm_field.is_a? CrmField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: crm_field EXPECTED TYPE: CrmField', nil, nil)
        end
        @crm_field = crm_field
        @key_modified['crm_field'] = 1
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
