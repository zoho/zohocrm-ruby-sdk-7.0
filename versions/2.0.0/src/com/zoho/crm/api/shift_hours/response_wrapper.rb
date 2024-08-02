require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    require_relative 'response_handler'
    class ResponseWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of ResponseWrapper
      def initialize
        @shift_hours = nil
        @shift_count = nil
        @key_modified = Hash.new
      end

        # The method to get the shift_hours
        # @return An instance of Array

      def shift_hours
        @shift_hours
      end

        # The method to set the value to shift_hours
        # @param shift_hours [Array] An instance of Array

      def shift_hours=(shift_hours)
        if shift_hours!=nil and !shift_hours.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_hours EXPECTED TYPE: Array', nil, nil)
        end
        @shift_hours = shift_hours
        @key_modified['shift_hours'] = 1
      end

        # The method to get the shift_count
        # @return An instance of ShiftCount

      def shift_count
        @shift_count
      end

        # The method to set the value to shift_count
        # @param shift_count [ShiftCount] An instance of ShiftCount

      def shift_count=(shift_count)
        if shift_count!=nil and !shift_count.is_a? ShiftCount
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_count EXPECTED TYPE: ShiftCount', nil, nil)
        end
        @shift_count = shift_count
        @key_modified['shift_count'] = 1
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
