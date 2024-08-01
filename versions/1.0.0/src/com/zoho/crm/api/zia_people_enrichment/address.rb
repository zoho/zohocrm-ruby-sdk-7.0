require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class Address
      include Util::Model

      # Creates an instance of Address
      def initialize
        @continent = nil
        @country = nil
        @name = nil
        @region = nil
        @primary = nil
        @key_modified = Hash.new
      end

        # The method to get the continent
        # @return A String value

      def continent
        @continent
      end

        # The method to set the value to continent
        # @param continent [String] A String

      def continent=(continent)
        if continent!=nil and !continent.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: continent EXPECTED TYPE: String', nil, nil)
        end
        @continent = continent
        @key_modified['continent'] = 1
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

        # The method to get the region
        # @return A String value

      def region
        @region
      end

        # The method to set the value to region
        # @param region [String] A String

      def region=(region)
        if region!=nil and !region.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: region EXPECTED TYPE: String', nil, nil)
        end
        @region = region
        @key_modified['region'] = 1
      end

        # The method to get the primary
        # @return A Boolean value

      def primary
        @primary
      end

        # The method to set the value to primary
        # @param primary [Boolean] A Boolean

      def primary=(primary)
        if primary!=nil and ! [true, false].include?primary
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary EXPECTED TYPE: Boolean', nil, nil)
        end
        @primary = primary
        @key_modified['primary'] = 1
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
