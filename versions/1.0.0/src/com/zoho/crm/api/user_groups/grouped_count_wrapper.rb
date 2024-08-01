require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    require_relative 'response_handler'
    class GroupedCountWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of GroupedCountWrapper
      def initialize
        @grouped_counts = nil
        @info = nil
        @key_modified = Hash.new
      end

        # The method to get the grouped_counts
        # @return An instance of Array

      def grouped_counts
        @grouped_counts
      end

        # The method to set the value to grouped_counts
        # @param grouped_counts [Array] An instance of Array

      def grouped_counts=(grouped_counts)
        if grouped_counts!=nil and !grouped_counts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: grouped_counts EXPECTED TYPE: Array', nil, nil)
        end
        @grouped_counts = grouped_counts
        @key_modified['grouped_counts'] = 1
      end

        # The method to get the info
        # @return An instance of Info

      def info
        @info
      end

        # The method to set the value to info
        # @param info [Info] An instance of Info

      def info=(info)
        if info!=nil and !info.is_a? Info
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: info EXPECTED TYPE: Info', nil, nil)
        end
        @info = info
        @key_modified['info'] = 1
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
