require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class AutoNumber
      include Util::Model

      # Creates an instance of AutoNumber
      def initialize
        @starting_number_length = nil
        @prefix = nil
        @suffix = nil
        @start_number = nil
        @key_modified = Hash.new
      end

        # The method to get the starting_number_length
        # @return A Integer value

      def starting_number_length
        @starting_number_length
      end

        # The method to set the value to starting_number_length
        # @param starting_number_length [Integer] A Integer

      def starting_number_length=(starting_number_length)
        if starting_number_length!=nil and !starting_number_length.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: starting_number_length EXPECTED TYPE: Integer', nil, nil)
        end
        @starting_number_length = starting_number_length
        @key_modified['starting_number_length'] = 1
      end

        # The method to get the prefix
        # @return A String value

      def prefix
        @prefix
      end

        # The method to set the value to prefix
        # @param prefix [String] A String

      def prefix=(prefix)
        if prefix!=nil and !prefix.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: prefix EXPECTED TYPE: String', nil, nil)
        end
        @prefix = prefix
        @key_modified['prefix'] = 1
      end

        # The method to get the suffix
        # @return A String value

      def suffix
        @suffix
      end

        # The method to set the value to suffix
        # @param suffix [String] A String

      def suffix=(suffix)
        if suffix!=nil and !suffix.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: suffix EXPECTED TYPE: String', nil, nil)
        end
        @suffix = suffix
        @key_modified['suffix'] = 1
      end

        # The method to get the start_number
        # @return A Integer value

      def start_number
        @start_number
      end

        # The method to set the value to start_number
        # @param start_number [Integer] A Integer

      def start_number=(start_number)
        if start_number!=nil and !start_number.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: start_number EXPECTED TYPE: Integer', nil, nil)
        end
        @start_number = start_number
        @key_modified['start_number'] = 1
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
