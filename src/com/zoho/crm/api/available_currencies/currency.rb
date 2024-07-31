require_relative '../util/model'

module ZOHOCRMSDK
  module AvailableCurrencies
    class Currency
      include Util::Model

      # Creates an instance of Currency
      def initialize
        @display_value = nil
        @decimal_separator = nil
        @symbol = nil
        @thousand_separator = nil
        @display_name = nil
        @iso_code = nil
        @decimal_places = nil
        @key_modified = Hash.new
      end

        # The method to get the display_value
        # @return A String value

      def display_value
        @display_value
      end

        # The method to set the value to display_value
        # @param display_value [String] A String

      def display_value=(display_value)
        if display_value!=nil and !display_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
        end
        @display_value = display_value
        @key_modified['display_value'] = 1
      end

        # The method to get the decimal_separator
        # @return A String value

      def decimal_separator
        @decimal_separator
      end

        # The method to set the value to decimal_separator
        # @param decimal_separator [String] A String

      def decimal_separator=(decimal_separator)
        if decimal_separator!=nil and !decimal_separator.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_separator EXPECTED TYPE: String', nil, nil)
        end
        @decimal_separator = decimal_separator
        @key_modified['decimal_separator'] = 1
      end

        # The method to get the symbol
        # @return A String value

      def symbol
        @symbol
      end

        # The method to set the value to symbol
        # @param symbol [String] A String

      def symbol=(symbol)
        if symbol!=nil and !symbol.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: symbol EXPECTED TYPE: String', nil, nil)
        end
        @symbol = symbol
        @key_modified['symbol'] = 1
      end

        # The method to get the thousand_separator
        # @return A String value

      def thousand_separator
        @thousand_separator
      end

        # The method to set the value to thousand_separator
        # @param thousand_separator [String] A String

      def thousand_separator=(thousand_separator)
        if thousand_separator!=nil and !thousand_separator.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: thousand_separator EXPECTED TYPE: String', nil, nil)
        end
        @thousand_separator = thousand_separator
        @key_modified['thousand_separator'] = 1
      end

        # The method to get the display_name
        # @return A String value

      def display_name
        @display_name
      end

        # The method to set the value to display_name
        # @param display_name [String] A String

      def display_name=(display_name)
        if display_name!=nil and !display_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_name EXPECTED TYPE: String', nil, nil)
        end
        @display_name = display_name
        @key_modified['display_name'] = 1
      end

        # The method to get the iso_code
        # @return A String value

      def iso_code
        @iso_code
      end

        # The method to set the value to iso_code
        # @param iso_code [String] A String

      def iso_code=(iso_code)
        if iso_code!=nil and !iso_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iso_code EXPECTED TYPE: String', nil, nil)
        end
        @iso_code = iso_code
        @key_modified['iso_code'] = 1
      end

        # The method to get the decimal_places
        # @return A String value

      def decimal_places
        @decimal_places
      end

        # The method to set the value to decimal_places
        # @param decimal_places [String] A String

      def decimal_places=(decimal_places)
        if decimal_places!=nil and !decimal_places.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_places EXPECTED TYPE: String', nil, nil)
        end
        @decimal_places = decimal_places
        @key_modified['decimal_places'] = 1
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
