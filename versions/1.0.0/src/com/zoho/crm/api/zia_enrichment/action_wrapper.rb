require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaEnrichment
    class ActionWrapper
      include Util::Model

      # Creates an instance of ActionWrapper
      def initialize
        @data_enrichment = nil
        @key_modified = Hash.new
      end

        # The method to get the data_enrichment
        # @return An instance of Array

      def data_enrichment
        @data_enrichment
      end

        # The method to set the value to data_enrichment
        # @param data_enrichment [Array] An instance of Array

      def data_enrichment=(data_enrichment)
        if data_enrichment!=nil and !data_enrichment.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_enrichment EXPECTED TYPE: Array', nil, nil)
        end
        @data_enrichment = data_enrichment
        @key_modified['data_enrichment'] = 1
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
