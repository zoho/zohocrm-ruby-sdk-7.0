require_relative '../util/model'

module ZOHOCRMSDK
  module Timelines
    class PathFinder
      include Util::Model

      # Creates an instance of PathFinder
      def initialize
        @process_entry = nil
        @process_exit = nil
        @state = nil
        @key_modified = Hash.new
      end

        # The method to get the process_entry
        # @return A Boolean value

      def process_entry
        @process_entry
      end

        # The method to set the value to process_entry
        # @param process_entry [Boolean] A Boolean

      def process_entry=(process_entry)
        if process_entry!=nil and ! [true, false].include?process_entry
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: process_entry EXPECTED TYPE: Boolean', nil, nil)
        end
        @process_entry = process_entry
        @key_modified['process_entry'] = 1
      end

        # The method to get the process_exit
        # @return A Boolean value

      def process_exit
        @process_exit
      end

        # The method to set the value to process_exit
        # @param process_exit [Boolean] A Boolean

      def process_exit=(process_exit)
        if process_exit!=nil and ! [true, false].include?process_exit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: process_exit EXPECTED TYPE: Boolean', nil, nil)
        end
        @process_exit = process_exit
        @key_modified['process_exit'] = 1
      end

        # The method to get the state
        # @return An instance of State

      def state
        @state
      end

        # The method to set the value to state
        # @param state [State] An instance of State

      def state=(state)
        if state!=nil and !state.is_a? State
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: State', nil, nil)
        end
        @state = state
        @key_modified['state'] = 1
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
