require_relative '../util/model'

module ZOHOCRMSDK
  module Features
    class Detail
      include Util::Model

      # Creates an instance of Detail
      def initialize
        @available_count = nil
        @limits = nil
        @used_count = nil
        @key_modified = Hash.new
      end

        # The method to get the available_count
        # @return An instance of Limit

      def available_count
        @available_count
      end

        # The method to set the value to available_count
        # @param available_count [Limit] An instance of Limit

      def available_count=(available_count)
        if available_count!=nil and !available_count.is_a? Limit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: available_count EXPECTED TYPE: Limit', nil, nil)
        end
        @available_count = available_count
        @key_modified['available_count'] = 1
      end

        # The method to get the limits
        # @return An instance of Limit

      def limits
        @limits
      end

        # The method to set the value to limits
        # @param limits [Limit] An instance of Limit

      def limits=(limits)
        if limits!=nil and !limits.is_a? Limit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: limits EXPECTED TYPE: Limit', nil, nil)
        end
        @limits = limits
        @key_modified['limits'] = 1
      end

        # The method to get the used_count
        # @return An instance of Limit

      def used_count
        @used_count
      end

        # The method to set the value to used_count
        # @param used_count [Limit] An instance of Limit

      def used_count=(used_count)
        if used_count!=nil and !used_count.is_a? Limit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: used_count EXPECTED TYPE: Limit', nil, nil)
        end
        @used_count = used_count
        @key_modified['used_count'] = 1
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
