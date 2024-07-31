require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    class ShiftCount
      include Util::Model

      # Creates an instance of ShiftCount
      def initialize
        @total_shift_with_user = nil
        @total_shift = nil
        @key_modified = Hash.new
      end

        # The method to get the total_shift_with_user
        # @return A Integer value

      def total_shift_with_user
        @total_shift_with_user
      end

        # The method to set the value to total_shift_with_user
        # @param total_shift_with_user [Integer] A Integer

      def total_shift_with_user=(total_shift_with_user)
        if total_shift_with_user!=nil and !total_shift_with_user.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total_shift_with_user EXPECTED TYPE: Integer', nil, nil)
        end
        @total_shift_with_user = total_shift_with_user
        @key_modified['total_shift_with_user'] = 1
      end

        # The method to get the total_shift
        # @return A Integer value

      def total_shift
        @total_shift
      end

        # The method to set the value to total_shift
        # @param total_shift [Integer] A Integer

      def total_shift=(total_shift)
        if total_shift!=nil and !total_shift.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total_shift EXPECTED TYPE: Integer', nil, nil)
        end
        @total_shift = total_shift
        @key_modified['total_shift'] = 1
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
