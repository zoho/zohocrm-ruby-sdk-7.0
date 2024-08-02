require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class FormAttributes
      include Util::Model

      # Creates an instance of FormAttributes
      def initialize
        @color = nil
        @width = nil
        @font_attributes = nil
        @align = nil
        @display_form_name = nil
        @key_modified = Hash.new
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

        # The method to get the width
        # @return A Integer value

      def width
        @width
      end

        # The method to set the value to width
        # @param width [Integer] A Integer

      def width=(width)
        if width!=nil and !width.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: width EXPECTED TYPE: Integer', nil, nil)
        end
        @width = width
        @key_modified['width'] = 1
      end

        # The method to get the font_attributes
        # @return An instance of FontAttributes

      def font_attributes
        @font_attributes
      end

        # The method to set the value to font_attributes
        # @param font_attributes [FontAttributes] An instance of FontAttributes

      def font_attributes=(font_attributes)
        if font_attributes!=nil and !font_attributes.is_a? FontAttributes
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: font_attributes EXPECTED TYPE: FontAttributes', nil, nil)
        end
        @font_attributes = font_attributes
        @key_modified['font_attributes'] = 1
      end

        # The method to get the align
        # @return A String value

      def align
        @align
      end

        # The method to set the value to align
        # @param align [String] A String

      def align=(align)
        if align!=nil and !align.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: align EXPECTED TYPE: String', nil, nil)
        end
        @align = align
        @key_modified['align'] = 1
      end

        # The method to get the display_form_name
        # @return A String value

      def display_form_name
        @display_form_name
      end

        # The method to set the value to display_form_name
        # @param display_form_name [String] A String

      def display_form_name=(display_form_name)
        if display_form_name!=nil and !display_form_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_form_name EXPECTED TYPE: String', nil, nil)
        end
        @display_form_name = display_form_name
        @key_modified['display_form_name'] = 1
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
