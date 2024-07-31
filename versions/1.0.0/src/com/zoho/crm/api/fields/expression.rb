require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class Expression
      include Util::Model

      # Creates an instance of Expression
      def initialize
        @function_parameters = nil
        @criteria = nil
        @function = nil
        @key_modified = Hash.new
      end

        # The method to get the function_parameters
        # @return An instance of Array

      def function_parameters
        @function_parameters
      end

        # The method to set the value to function_parameters
        # @param function_parameters [Array] An instance of Array

      def function_parameters=(function_parameters)
        if function_parameters!=nil and !function_parameters.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: function_parameters EXPECTED TYPE: Array', nil, nil)
        end
        @function_parameters = function_parameters
        @key_modified['function_parameters'] = 1
      end

        # The method to get the criteria
        # @return An instance of RollupCriteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [RollupCriteria] An instance of RollupCriteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? RollupCriteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: RollupCriteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
      end

        # The method to get the function
        # @return A String value

      def function
        @function
      end

        # The method to set the value to function
        # @param function [String] A String

      def function=(function)
        if function!=nil and !function.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: function EXPECTED TYPE: String', nil, nil)
        end
        @function = function
        @key_modified['function'] = 1
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
