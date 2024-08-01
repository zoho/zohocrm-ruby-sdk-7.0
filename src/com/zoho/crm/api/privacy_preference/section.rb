require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyPreference
    class Section
      include Util::Model

      # Creates an instance of Section
      def initialize
        @name = nil
        @tooltip = nil
        @show_type = nil
        @title = nil
        @options = nil
        @key_modified = Hash.new
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

        # The method to get the tooltip
        # @return A String value

      def tooltip
        @tooltip
      end

        # The method to set the value to tooltip
        # @param tooltip [String] A String

      def tooltip=(tooltip)
        if tooltip!=nil and !tooltip.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tooltip EXPECTED TYPE: String', nil, nil)
        end
        @tooltip = tooltip
        @key_modified['tooltip'] = 1
      end

        # The method to get the show_type
        # @return A String value

      def show_type
        @show_type
      end

        # The method to set the value to show_type
        # @param show_type [String] A String

      def show_type=(show_type)
        if show_type!=nil and !show_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_type EXPECTED TYPE: String', nil, nil)
        end
        @show_type = show_type
        @key_modified['show_type'] = 1
      end

        # The method to get the title
        # @return A String value

      def title
        @title
      end

        # The method to set the value to title
        # @param title [String] A String

      def title=(title)
        if title!=nil and !title.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: title EXPECTED TYPE: String', nil, nil)
        end
        @title = title
        @key_modified['title'] = 1
      end

        # The method to get the options
        # @return An instance of Array

      def options
        @options
      end

        # The method to set the value to options
        # @param options [Array] An instance of Array

      def options=(options)
        if options!=nil and !options.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: options EXPECTED TYPE: Array', nil, nil)
        end
        @options = options
        @key_modified['options'] = 1
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
