require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Users
    class Tab
      include Util::Model

      # Creates an instance of Tab
      def initialize
        @font_color = nil
        @background = nil
        @key_modified = Hash.new
      end

        # The method to get the font_color
        # @return An instance of Util::Choice

      def font_color
        @font_color
      end

        # The method to set the value to font_color
        # @param font_color [Util::Choice] An instance of Util::Choice

      def font_color=(font_color)
        if font_color!=nil and !font_color.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: font_color EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @font_color = font_color
        @key_modified['font_color'] = 1
      end

        # The method to get the background
        # @return An instance of Util::Choice

      def background
        @background
      end

        # The method to set the value to background
        # @param background [Util::Choice] An instance of Util::Choice

      def background=(background)
        if background!=nil and !background.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: background EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @background = background
        @key_modified['background'] = 1
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
