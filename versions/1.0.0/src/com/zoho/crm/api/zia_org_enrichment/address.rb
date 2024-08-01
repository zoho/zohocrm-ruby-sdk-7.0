require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaOrgEnrichment
    class Address
      include Util::Model

      # Creates an instance of Address
      def initialize
        @country = nil
        @city = nil
        @pin_code = nil
        @state = nil
        @fill_address = nil
        @key_modified = Hash.new
      end

        # The method to get the country
        # @return A String value

      def country
        @country
      end

        # The method to set the value to country
        # @param country [String] A String

      def country=(country)
        if country!=nil and !country.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country EXPECTED TYPE: String', nil, nil)
        end
        @country = country
        @key_modified['country'] = 1
      end

        # The method to get the city
        # @return A String value

      def city
        @city
      end

        # The method to set the value to city
        # @param city [String] A String

      def city=(city)
        if city!=nil and !city.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: city EXPECTED TYPE: String', nil, nil)
        end
        @city = city
        @key_modified['city'] = 1
      end

        # The method to get the pin_code
        # @return A String value

      def pin_code
        @pin_code
      end

        # The method to set the value to pin_code
        # @param pin_code [String] A String

      def pin_code=(pin_code)
        if pin_code!=nil and !pin_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pin_code EXPECTED TYPE: String', nil, nil)
        end
        @pin_code = pin_code
        @key_modified['pin_code'] = 1
      end

        # The method to get the state
        # @return A String value

      def state
        @state
      end

        # The method to set the value to state
        # @param state [String] A String

      def state=(state)
        if state!=nil and !state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
        end
        @state = state
        @key_modified['state'] = 1
      end

        # The method to get the fill_address
        # @return A String value

      def fill_address
        @fill_address
      end

        # The method to set the value to fill_address
        # @param fill_address [String] A String

      def fill_address=(fill_address)
        if fill_address!=nil and !fill_address.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fill_address EXPECTED TYPE: String', nil, nil)
        end
        @fill_address = fill_address
        @key_modified['fill_address'] = 1
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
