require_relative '../util/model'

module ZOHOCRMSDK
  module Holidays
    require_relative 'body_wrapper'
    class CreateBusinessHoliday
      include Util::Model
      include BodyWrapper

      # Creates an instance of CreateBusinessHoliday
      def initialize
        @holidays = nil
        @key_modified = Hash.new
      end

        # The method to get the holidays
        # @return An instance of Array

      def holidays
        @holidays
      end

        # The method to set the value to holidays
        # @param holidays [Array] An instance of Array

      def holidays=(holidays)
        if holidays!=nil and !holidays.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: holidays EXPECTED TYPE: Array', nil, nil)
        end
        @holidays = holidays
        @key_modified['holidays'] = 1
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
