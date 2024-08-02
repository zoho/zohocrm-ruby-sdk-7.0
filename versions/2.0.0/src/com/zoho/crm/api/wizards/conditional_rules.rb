require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class ConditionalRules
      include Util::Model

      # Creates an instance of ConditionalRules
      def initialize
        @query_id = nil
        @execute_on = nil
        @criteria = nil
        @actions = nil
        @key_modified = Hash.new
      end

        # The method to get the query_id
        # @return A Integer value

      def query_id
        @query_id
      end

        # The method to set the value to query_id
        # @param query_id [Integer] A Integer

      def query_id=(query_id)
        if query_id!=nil and !query_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: query_id EXPECTED TYPE: Integer', nil, nil)
        end
        @query_id = query_id
        @key_modified['query_id'] = 1
      end

        # The method to get the execute_on
        # @return An instance of Util::Choice

      def execute_on
        @execute_on
      end

        # The method to set the value to execute_on
        # @param execute_on [Util::Choice] An instance of Util::Choice

      def execute_on=(execute_on)
        if execute_on!=nil and !execute_on.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: execute_on EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @execute_on = execute_on
        @key_modified['execute_on'] = 1
      end

        # The method to get the criteria
        # @return An instance of Criteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Criteria] An instance of Criteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
      end

        # The method to get the actions
        # @return An instance of Array

      def actions
        @actions
      end

        # The method to set the value to actions
        # @param actions [Array] An instance of Array

      def actions=(actions)
        if actions!=nil and !actions.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actions EXPECTED TYPE: Array', nil, nil)
        end
        @actions = actions
        @key_modified['actions'] = 1
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
