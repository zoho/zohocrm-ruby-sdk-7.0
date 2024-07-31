require_relative '../util/model'

module ZOHOCRMSDK
  module Holidays
    class Holiday
      include Util::Model

      # Creates an instance of Holiday
      def initialize
        @year = nil
        @name = nil
        @date = nil
        @type = nil
        @id = nil
        @shift_hour = nil
        @key_modified = Hash.new
      end

        # The method to get the year
        # @return A Integer value

      def year
        @year
      end

        # The method to set the value to year
        # @param year [Integer] A Integer

      def year=(year)
        if year!=nil and !year.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: year EXPECTED TYPE: Integer', nil, nil)
        end
        @year = year
        @key_modified['year'] = 1
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

        # The method to get the date
        # @return An instance of Date

      def date
        @date
      end

        # The method to set the value to date
        # @param date [Date] An instance of Date

      def date=(date)
        if date!=nil and !date.is_a? Date
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: date EXPECTED TYPE: Date', nil, nil)
        end
        @date = date
        @key_modified['date'] = 1
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

        # The method to get the shift_hour
        # @return An instance of ShiftHour

      def shift_hour
        @shift_hour
      end

        # The method to set the value to shift_hour
        # @param shift_hour [ShiftHour] An instance of ShiftHour

      def shift_hour=(shift_hour)
        if shift_hour!=nil and !shift_hour.is_a? ShiftHour
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_hour EXPECTED TYPE: ShiftHour', nil, nil)
        end
        @shift_hour = shift_hour
        @key_modified['shift_hour'] = 1
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
