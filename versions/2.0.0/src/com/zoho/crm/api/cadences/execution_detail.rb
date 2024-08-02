require_relative '../util/model'

module ZOHOCRMSDK
  module Cadences
    class ExecutionDetail
      include Util::Model

      # Creates an instance of ExecutionDetail
      def initialize
        @unenroll_properties = nil
        @end_date = nil
        @automatic_unenroll = nil
        @type = nil
        @execute_every = nil
        @key_modified = Hash.new
      end

        # The method to get the unenroll_properties
        # @return An instance of UnenrollProperty

      def unenroll_properties
        @unenroll_properties
      end

        # The method to set the value to unenroll_properties
        # @param unenroll_properties [UnenrollProperty] An instance of UnenrollProperty

      def unenroll_properties=(unenroll_properties)
        if unenroll_properties!=nil and !unenroll_properties.is_a? UnenrollProperty
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unenroll_properties EXPECTED TYPE: UnenrollProperty', nil, nil)
        end
        @unenroll_properties = unenroll_properties
        @key_modified['unenroll_properties'] = 1
      end

        # The method to get the end_date
        # @return A String value

      def end_date
        @end_date
      end

        # The method to set the value to end_date
        # @param end_date [String] A String

      def end_date=(end_date)
        if end_date!=nil and !end_date.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: end_date EXPECTED TYPE: String', nil, nil)
        end
        @end_date = end_date
        @key_modified['end_date'] = 1
      end

        # The method to get the automatic_unenroll
        # @return A Boolean value

      def automatic_unenroll
        @automatic_unenroll
      end

        # The method to set the value to automatic_unenroll
        # @param automatic_unenroll [Boolean] A Boolean

      def automatic_unenroll=(automatic_unenroll)
        if automatic_unenroll!=nil and ! [true, false].include?automatic_unenroll
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: automatic_unenroll EXPECTED TYPE: Boolean', nil, nil)
        end
        @automatic_unenroll = automatic_unenroll
        @key_modified['automatic_unenroll'] = 1
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

        # The method to get the execute_every
        # @return An instance of ExecuteEvery

      def execute_every
        @execute_every
      end

        # The method to set the value to execute_every
        # @param execute_every [ExecuteEvery] An instance of ExecuteEvery

      def execute_every=(execute_every)
        if execute_every!=nil and !execute_every.is_a? ExecuteEvery
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: execute_every EXPECTED TYPE: ExecuteEvery', nil, nil)
        end
        @execute_every = execute_every
        @key_modified['execute_every'] = 1
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
