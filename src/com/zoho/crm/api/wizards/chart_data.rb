require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class ChartData
      include Util::Model

      # Creates an instance of ChartData
      def initialize
        @nodes = nil
        @connections = nil
        @color_palette = nil
        @canvas_width = nil
        @canvas_height = nil
        @key_modified = Hash.new
      end

        # The method to get the nodes
        # @return An instance of Array

      def nodes
        @nodes
      end

        # The method to set the value to nodes
        # @param nodes [Array] An instance of Array

      def nodes=(nodes)
        if nodes!=nil and !nodes.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: nodes EXPECTED TYPE: Array', nil, nil)
        end
        @nodes = nodes
        @key_modified['nodes'] = 1
      end

        # The method to get the connections
        # @return An instance of Array

      def connections
        @connections
      end

        # The method to set the value to connections
        # @param connections [Array] An instance of Array

      def connections=(connections)
        if connections!=nil and !connections.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: connections EXPECTED TYPE: Array', nil, nil)
        end
        @connections = connections
        @key_modified['connections'] = 1
      end

        # The method to get the color_palette
        # @return An instance of ButtonBackground

      def color_palette
        @color_palette
      end

        # The method to set the value to color_palette
        # @param color_palette [ButtonBackground] An instance of ButtonBackground

      def color_palette=(color_palette)
        if color_palette!=nil and !color_palette.is_a? ButtonBackground
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: color_palette EXPECTED TYPE: ButtonBackground', nil, nil)
        end
        @color_palette = color_palette
        @key_modified['color_palette'] = 1
      end

        # The method to get the canvas_width
        # @return A Integer value

      def canvas_width
        @canvas_width
      end

        # The method to set the value to canvas_width
        # @param canvas_width [Integer] A Integer

      def canvas_width=(canvas_width)
        if canvas_width!=nil and !canvas_width.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: canvas_width EXPECTED TYPE: Integer', nil, nil)
        end
        @canvas_width = canvas_width
        @key_modified['canvas_width'] = 1
      end

        # The method to get the canvas_height
        # @return A Integer value

      def canvas_height
        @canvas_height
      end

        # The method to set the value to canvas_height
        # @param canvas_height [Integer] A Integer

      def canvas_height=(canvas_height)
        if canvas_height!=nil and !canvas_height.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: canvas_height EXPECTED TYPE: Integer', nil, nil)
        end
        @canvas_height = canvas_height
        @key_modified['canvas_height'] = 1
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
