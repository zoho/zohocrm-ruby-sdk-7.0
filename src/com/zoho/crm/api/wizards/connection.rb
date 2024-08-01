require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Connection
      include Util::Model

      # Creates an instance of Connection
      def initialize
        @source_button = nil
        @target_screen = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the source_button
        # @return An instance of Button

      def source_button
        @source_button
      end

        # The method to set the value to source_button
        # @param source_button [Button] An instance of Button

      def source_button=(source_button)
        if source_button!=nil and !source_button.is_a? Button
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source_button EXPECTED TYPE: Button', nil, nil)
        end
        @source_button = source_button
        @key_modified['source_button'] = 1
      end

        # The method to get the target_screen
        # @return An instance of Screen

      def tarscreen
        @target_screen
      end

        # The method to set the value to target_screen
        # @param target_screen [Screen] An instance of Screen

      def tarscreen=(target_screen)
        if target_screen!=nil and !target_screen.is_a? Screen
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: target_screen EXPECTED TYPE: Screen', nil, nil)
        end
        @target_screen = target_screen
        @key_modified['target_screen'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
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
