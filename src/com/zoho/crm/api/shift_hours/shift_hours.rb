require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    class ShiftHours
      include Util::Model

      # Creates an instance of ShiftHours
      def initialize
        @same_as_everyday = nil
        @shift_days = nil
        @daily_timing = nil
        @custom_timing = nil
        @id = nil
        @break_hours = nil
        @users = nil
        @holidays = nil
        @users_count = nil
        @timezone = nil
        @name = nil
        @key_modified = Hash.new
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

        # The method to get the shift_days
        # @return An instance of Array

      def shift_days
        @shift_days
      end

        # The method to set the value to shift_days
        # @param shift_days [Array] An instance of Array

      def shift_days=(shift_days)
        if shift_days!=nil and !shift_days.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_days EXPECTED TYPE: Array', nil, nil)
        end
        @shift_days = shift_days
        @key_modified['shift_days'] = 1
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

        # The method to get the break_hours
        # @return An instance of Array

      def break_hours
        @break_hours
      end

        # The method to set the value to break_hours
        # @param break_hours [Array] An instance of Array

      def break_hours=(break_hours)
        if break_hours!=nil and !break_hours.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: break_hours EXPECTED TYPE: Array', nil, nil)
        end
        @break_hours = break_hours
        @key_modified['break_hours'] = 1
      end

        # The method to get the users
        # @return An instance of Array

      def users
        @users
      end

        # The method to set the value to users
        # @param users [Array] An instance of Array

      def users=(users)
        if users!=nil and !users.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: users EXPECTED TYPE: Array', nil, nil)
        end
        @users = users
        @key_modified['users'] = 1
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

        # The method to get the users_count
        # @return A Integer value

      def users_count
        @users_count
      end

        # The method to set the value to users_count
        # @param users_count [Integer] A Integer

      def users_count=(users_count)
        if users_count!=nil and !users_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: users_count EXPECTED TYPE: Integer', nil, nil)
        end
        @users_count = users_count
        @key_modified['users_count'] = 1
      end

        # The method to get the timezone
        # @return An instance of String

      def timezone
        @timezone
      end

        # The method to set the value to timezone
        # @param timezone [String] An instance of String

      def timezone=(timezone)
        if timezone!=nil and !timezone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: timezone EXPECTED TYPE: TimeZone', nil, nil)
        end
        @timezone = timezone
        @key_modified['timezone'] = 1
      end

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
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
