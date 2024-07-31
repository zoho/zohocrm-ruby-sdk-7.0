require_relative '../util/model'

module ZOHOCRMSDK
  module Record
    class TimeRange
      include Util::Model

      # Creates an instance of TimeRange
      def initialize
        @from = nil
        @to = nil
        @key_modified = Hash.new
      end

        # The method to get the from
        # @return A String value

      def from
        @from
      end

        # The method to set the value to from
        # @param from [String] A String

      def from=(from)
        if from!=nil and !from.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: String', nil, nil)
        end
        @from = from
        @key_modified['From'] = 1
      end

        # The method to get the to
        # @return A String value

      def to
        @to
      end

        # The method to set the value to to
        # @param to [String] A String

      def to=(to)
        if to!=nil and !to.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to EXPECTED TYPE: String', nil, nil)
        end
        @to = to
        @key_modified['To'] = 1
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
