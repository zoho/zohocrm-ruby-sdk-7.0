require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Node
      include Util::Model

      # Creates an instance of Node
      def initialize
        @pos_y = nil
        @pos_x = nil
        @start_node = nil
        @screen = nil
        @key_modified = Hash.new
      end

        # The method to get the pos_y
        # @return A Integer value

      def pos_y
        @pos_y
      end

        # The method to set the value to pos_y
        # @param pos_y [Integer] A Integer

      def pos_y=(pos_y)
        if pos_y!=nil and !pos_y.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pos_y EXPECTED TYPE: Integer', nil, nil)
        end
        @pos_y = pos_y
        @key_modified['pos_y'] = 1
      end

        # The method to get the pos_x
        # @return A Integer value

      def pos_x
        @pos_x
      end

        # The method to set the value to pos_x
        # @param pos_x [Integer] A Integer

      def pos_x=(pos_x)
        if pos_x!=nil and !pos_x.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pos_x EXPECTED TYPE: Integer', nil, nil)
        end
        @pos_x = pos_x
        @key_modified['pos_x'] = 1
      end

        # The method to get the start_node
        # @return A Boolean value

      def start_node
        @start_node
      end

        # The method to set the value to start_node
        # @param start_node [Boolean] A Boolean

      def start_node=(start_node)
        if start_node!=nil and ! [true, false].include?start_node
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: start_node EXPECTED TYPE: Boolean', nil, nil)
        end
        @start_node = start_node
        @key_modified['start_node'] = 1
      end

        # The method to get the screen
        # @return An instance of Screen

      def screen
        @screen
      end

        # The method to set the value to screen
        # @param screen [Screen] An instance of Screen

      def screen=(screen)
        if screen!=nil and !screen.is_a? Screen
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: screen EXPECTED TYPE: Screen', nil, nil)
        end
        @screen = screen
        @key_modified['screen'] = 1
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
