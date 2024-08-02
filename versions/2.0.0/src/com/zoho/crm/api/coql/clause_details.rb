require_relative '../util/model'

module ZOHOCRMSDK
  module Coql
    require_relative 'details_wrapper'
    class ClauseDetails
      include Util::Model
      include DetailsWrapper

      # Creates an instance of ClauseDetails
      def initialize
        @clause = nil
        @key_modified = Hash.new
      end

        # The method to get the clause
        # @return A String value

      def clause
        @clause
      end

        # The method to set the value to clause
        # @param clause [String] A String

      def clause=(clause)
        if clause!=nil and !clause.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: clause EXPECTED TYPE: String', nil, nil)
        end
        @clause = clause
        @key_modified['clause'] = 1
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
