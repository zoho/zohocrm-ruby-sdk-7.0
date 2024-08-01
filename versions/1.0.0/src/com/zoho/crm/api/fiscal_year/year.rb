require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module FiscalYear
    class Year
      include Util::Model

      # Creates an instance of Year
      def initialize
        @start_month = nil
        @display_based_on = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the start_month
        # @return An instance of Util::Choice

      def start_month
        @start_month
      end

        # The method to set the value to start_month
        # @param start_month [Util::Choice] An instance of Util::Choice

      def start_month=(start_month)
        if start_month!=nil and !start_month.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: start_month EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @start_month = start_month
        @key_modified['start_month'] = 1
      end

        # The method to get the display_based_on
        # @return An instance of Util::Choice

      def display_based_on
        @display_based_on
      end

        # The method to set the value to display_based_on
        # @param display_based_on [Util::Choice] An instance of Util::Choice

      def display_based_on=(display_based_on)
        if display_based_on!=nil and !display_based_on.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_based_on EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @display_based_on = display_based_on
        @key_modified['display_based_on'] = 1
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
