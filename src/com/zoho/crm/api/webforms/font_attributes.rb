require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class FontAttributes
      include Util::Model

      # Creates an instance of FontAttributes
      def initialize
        @size = nil
        @color = nil
        @family = nil
        @key_modified = Hash.new
      end

        # The method to get the size
        # @return A Integer value

      def size
        @size
      end

        # The method to set the value to size
        # @param size [Integer] A Integer

      def size=(size)
        if size!=nil and !size.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: size EXPECTED TYPE: Integer', nil, nil)
        end
        @size = size
        @key_modified['size'] = 1
      end

        # The method to get the color
        # @return A String value

      def color
        @color
      end

        # The method to set the value to color
        # @param color [String] A String

      def color=(color)
        if color!=nil and !color.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: color EXPECTED TYPE: String', nil, nil)
        end
        @color = color
        @key_modified['color'] = 1
      end

        # The method to get the family
        # @return A String value

      def family
        @family
      end

        # The method to set the value to family
        # @param family [String] A String

      def family=(family)
        if family!=nil and !family.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: family EXPECTED TYPE: String', nil, nil)
        end
        @family = family
        @key_modified['family'] = 1
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
