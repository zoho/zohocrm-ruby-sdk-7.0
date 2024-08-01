require_relative '../util/model'

module ZOHOCRMSDK
  module Blueprint
    class CurrentPicklist
      include Util::Model

      # Creates an instance of CurrentPicklist
      def initialize
        @colour_code = nil
        @id = nil
        @value = nil
        @key_modified = Hash.new
      end

        # The method to get the colour_code
        # @return A String value

      def colour_code
        @colour_code
      end

        # The method to set the value to colour_code
        # @param colour_code [String] A String

      def colour_code=(colour_code)
        if colour_code!=nil and !colour_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: colour_code EXPECTED TYPE: String', nil, nil)
        end
        @colour_code = colour_code
        @key_modified['colour_code'] = 1
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the value
        # @return A String value

      def value
        @value
      end

        # The method to set the value to value
        # @param value [String] A String

      def value=(value)
        if value!=nil and !value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: value EXPECTED TYPE: String', nil, nil)
        end
        @value = value
        @key_modified['value'] = 1
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
