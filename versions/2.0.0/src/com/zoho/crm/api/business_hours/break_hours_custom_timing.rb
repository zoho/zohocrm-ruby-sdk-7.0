require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module BusinessHours
    class BreakHoursCustomTiming
      include Util::Model

      # Creates an instance of BreakHoursCustomTiming
      def initialize
        @days = nil
        @business_timing = nil
        @key_modified = Hash.new
      end

        # The method to get the days
        # @return An instance of Util::Choice

      def days
        @days
      end

        # The method to set the value to days
        # @param days [Util::Choice] An instance of Util::Choice

      def days=(days)
        if days!=nil and !days.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: days EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @days = days
        @key_modified['days'] = 1
      end

        # The method to get the business_timing
        # @return An instance of Array

      def business_timing
        @business_timing
      end

        # The method to set the value to business_timing
        # @param business_timing [Array] An instance of Array

      def business_timing=(business_timing)
        if business_timing!=nil and !business_timing.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: business_timing EXPECTED TYPE: Array', nil, nil)
        end
        @business_timing = business_timing
        @key_modified['business_timing'] = 1
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
