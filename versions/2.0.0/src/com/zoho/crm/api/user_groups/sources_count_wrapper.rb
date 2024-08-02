require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    require_relative 'response_handler'
    class SourcesCountWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of SourcesCountWrapper
      def initialize
        @sources_count = nil
        @key_modified = Hash.new
      end

        # The method to get the sources_count
        # @return An instance of Array

      def sources_count
        @sources_count
      end

        # The method to set the value to sources_count
        # @param sources_count [Array] An instance of Array

      def sources_count=(sources_count)
        if sources_count!=nil and !sources_count.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sources_count EXPECTED TYPE: Array', nil, nil)
        end
        @sources_count = sources_count
        @key_modified['sources_count'] = 1
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
