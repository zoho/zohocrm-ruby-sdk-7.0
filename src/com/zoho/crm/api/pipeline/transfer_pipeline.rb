require_relative '../util/model'

module ZOHOCRMSDK
  module Pipeline
    class TransferPipeline
      include Util::Model

      # Creates an instance of TransferPipeline
      def initialize
        @pipeline = nil
        @stages = nil
        @key_modified = Hash.new
      end

        # The method to get the pipeline
        # @return An instance of TPipeline

      def pipeline
        @pipeline
      end

        # The method to set the value to pipeline
        # @param pipeline [TPipeline] An instance of TPipeline

      def pipeline=(pipeline)
        if pipeline!=nil and !pipeline.is_a? TPipeline
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pipeline EXPECTED TYPE: TPipeline', nil, nil)
        end
        @pipeline = pipeline
        @key_modified['pipeline'] = 1
      end

        # The method to get the stages
        # @return An instance of Array

      def stages
        @stages
      end

        # The method to set the value to stages
        # @param stages [Array] An instance of Array

      def stages=(stages)
        if stages!=nil and !stages.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: stages EXPECTED TYPE: Array', nil, nil)
        end
        @stages = stages
        @key_modified['stages'] = 1
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
