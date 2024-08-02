require_relative '../util/model'

module ZOHOCRMSDK
  module Cadences
    class UnenrollProperty
      include Util::Model

      # Creates an instance of UnenrollProperty
      def initialize
        @end_date = nil
        @type = nil
        @key_modified = Hash.new
      end

        # The method to get the end_date
        # @return A String value

      def end_date
        @end_date
      end

        # The method to set the value to end_date
        # @param end_date [String] A String

      def end_date=(end_date)
        if end_date!=nil and !end_date.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: end_date EXPECTED TYPE: String', nil, nil)
        end
        @end_date = end_date
        @key_modified['end_date'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
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
