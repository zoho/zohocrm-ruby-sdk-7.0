require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    class ShiftCustomTiming
      include Util::Model

      # Creates an instance of ShiftCustomTiming
      def initialize
        @days = nil
        @shift_timing = nil
        @key_modified = Hash.new
      end

        # The method to get the days
        # @return A String value

      def days
        @days
      end

        # The method to set the value to days
        # @param days [String] A String

      def days=(days)
        if days!=nil and !days.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: days EXPECTED TYPE: String', nil, nil)
        end
        @days = days
        @key_modified['days'] = 1
      end

        # The method to get the shift_timing
        # @return An instance of Array

      def shift_timing
        @shift_timing
      end

        # The method to set the value to shift_timing
        # @param shift_timing [Array] An instance of Array

      def shift_timing=(shift_timing)
        if shift_timing!=nil and !shift_timing.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_timing EXPECTED TYPE: Array', nil, nil)
        end
        @shift_timing = shift_timing
        @key_modified['shift_timing'] = 1
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
