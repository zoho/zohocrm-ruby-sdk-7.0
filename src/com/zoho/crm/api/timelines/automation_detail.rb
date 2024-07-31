require_relative '../util/model'

module ZOHOCRMSDK
  module Timelines
    class AutomationDetail
      include Util::Model

      # Creates an instance of AutomationDetail
      def initialize
        @type = nil
        @rule = nil
        @pathfinder = nil
        @key_modified = Hash.new
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the rule
        # @return An instance of NameIdStructure

      def rule
        @rule
      end

        # The method to set the value to rule
        # @param rule [NameIdStructure] An instance of NameIdStructure

      def rule=(rule)
        if rule!=nil and !rule.is_a? NameIdStructure
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rule EXPECTED TYPE: NameIdStructure', nil, nil)
        end
        @rule = rule
        @key_modified['rule'] = 1
      end

        # The method to get the pathfinder
        # @return An instance of PathFinder

      def pathfinder
        @pathfinder
      end

        # The method to set the value to pathfinder
        # @param pathfinder [PathFinder] An instance of PathFinder

      def pathfinder=(pathfinder)
        if pathfinder!=nil and !pathfinder.is_a? PathFinder
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pathfinder EXPECTED TYPE: PathFinder', nil, nil)
        end
        @pathfinder = pathfinder
        @key_modified['pathfinder'] = 1
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
