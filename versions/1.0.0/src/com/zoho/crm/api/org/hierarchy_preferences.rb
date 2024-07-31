require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Org
    class HierarchyPreferences
      include Util::Model

      # Creates an instance of HierarchyPreferences
      def initialize
        @type = nil
        @strictly_reporting = nil
        @key_modified = Hash.new
      end

        # The method to get the type
        # @return An instance of Util::Choice

      def type
        @type
      end

        # The method to set the value to type
        # @param type [Util::Choice] An instance of Util::Choice

      def type=(type)
        if type!=nil and !type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the strictly_reporting
        # @return A Boolean value

      def strictly_reporting
        @strictly_reporting
      end

        # The method to set the value to strictly_reporting
        # @param strictly_reporting [Boolean] A Boolean

      def strictly_reporting=(strictly_reporting)
        if strictly_reporting!=nil and ! [true, false].include?strictly_reporting
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: strictly_reporting EXPECTED TYPE: Boolean', nil, nil)
        end
        @strictly_reporting = strictly_reporting
        @key_modified['strictly_reporting'] = 1
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
