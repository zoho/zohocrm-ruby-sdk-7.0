require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    class BreakHours
      include Util::Model

      # Creates an instance of BreakHours
      def initialize
        @break_days = nil
        @same_as_everyday = nil
        @daily_timing = nil
        @custom_timing = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the break_days
        # @return An instance of Array

      def break_days
        @break_days
      end

        # The method to set the value to break_days
        # @param break_days [Array] An instance of Array

      def break_days=(break_days)
        if break_days!=nil and !break_days.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: break_days EXPECTED TYPE: Array', nil, nil)
        end
        @break_days = break_days
        @key_modified['break_days'] = 1
      end

        # The method to get the same_as_everyday
        # @return A Boolean value

      def same_as_everyday
        @same_as_everyday
      end

        # The method to set the value to same_as_everyday
        # @param same_as_everyday [Boolean] A Boolean

      def same_as_everyday=(same_as_everyday)
        if same_as_everyday!=nil and ! [true, false].include?same_as_everyday
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: same_as_everyday EXPECTED TYPE: Boolean', nil, nil)
        end
        @same_as_everyday = same_as_everyday
        @key_modified['same_as_everyday'] = 1
      end

        # The method to get the daily_timing
        # @return An instance of Array

      def daily_timing
        @daily_timing
      end

        # The method to set the value to daily_timing
        # @param daily_timing [Array] An instance of Array

      def daily_timing=(daily_timing)
        if daily_timing!=nil and !daily_timing.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: daily_timing EXPECTED TYPE: Array', nil, nil)
        end
        @daily_timing = daily_timing
        @key_modified['daily_timing'] = 1
      end

        # The method to get the custom_timing
        # @return An instance of Array

      def custom_timing
        @custom_timing
      end

        # The method to set the value to custom_timing
        # @param custom_timing [Array] An instance of Array

      def custom_timing=(custom_timing)
        if custom_timing!=nil and !custom_timing.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: custom_timing EXPECTED TYPE: Array', nil, nil)
        end
        @custom_timing = custom_timing
        @key_modified['custom_timing'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
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
