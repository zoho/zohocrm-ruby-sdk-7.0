require_relative '../util/model'

module ZOHOCRMSDK
  module Pipeline
    class TransferPipelineWrapper
      include Util::Model

      # Creates an instance of TransferPipelineWrapper
      def initialize
        @transfer_pipeline = nil
        @key_modified = Hash.new
      end

        # The method to get the transfer_pipeline
        # @return An instance of Array

      def transfer_pipeline
        @transfer_pipeline
      end

        # The method to set the value to transfer_pipeline
        # @param transfer_pipeline [Array] An instance of Array

      def transfer_pipeline=(transfer_pipeline)
        if transfer_pipeline!=nil and !transfer_pipeline.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transfer_pipeline EXPECTED TYPE: Array', nil, nil)
        end
        @transfer_pipeline = transfer_pipeline
        @key_modified['transfer_pipeline'] = 1
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
