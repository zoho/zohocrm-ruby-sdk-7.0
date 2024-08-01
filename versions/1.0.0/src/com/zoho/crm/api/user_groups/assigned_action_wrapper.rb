require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class AssignedActionWrapper
      include Util::Model

      # Creates an instance of AssignedActionWrapper
      def initialize
        @get_assigned = nil
        @key_modified = Hash.new
      end

        # The method to get the get_assigned
        # @return An instance of AssignedActionResponse

      def assigned
        @get_assigned
      end

        # The method to set the value to get_assigned
        # @param get_assigned [AssignedActionResponse] An instance of AssignedActionResponse

      def assigned=(get_assigned)
        if get_assigned!=nil and !get_assigned.is_a? AssignedActionResponse
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: get_assigned EXPECTED TYPE: AssignedActionResponse', nil, nil)
        end
        @get_assigned = get_assigned
        @key_modified['get_assigned'] = 1
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
