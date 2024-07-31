require_relative '../util/model'

module ZOHOCRMSDK
  module Coql
    require_relative 'details_wrapper'
    class ParseErrorDetails
      include Util::Model
      include DetailsWrapper

      # Creates an instance of ParseErrorDetails
      def initialize
        @line = nil
        @column = nil
        @near = nil
        @key_modified = Hash.new
      end

        # The method to get the line
        # @return A Integer value

      def line
        @line
      end

        # The method to set the value to line
        # @param line [Integer] A Integer

      def line=(line)
        if line!=nil and !line.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: line EXPECTED TYPE: Integer', nil, nil)
        end
        @line = line
        @key_modified['line'] = 1
      end

        # The method to get the column
        # @return A Integer value

      def column
        @column
      end

        # The method to set the value to column
        # @param column [Integer] A Integer

      def column=(column)
        if column!=nil and !column.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column EXPECTED TYPE: Integer', nil, nil)
        end
        @column = column
        @key_modified['column'] = 1
      end

        # The method to get the near
        # @return A String value

      def near
        @near
      end

        # The method to set the value to near
        # @param near [String] A String

      def near=(near)
        if near!=nil and !near.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: near EXPECTED TYPE: String', nil, nil)
        end
        @near = near
        @key_modified['near'] = 1
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
