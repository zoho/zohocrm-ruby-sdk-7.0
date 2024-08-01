require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class GetUnassignBodyWrapper
      include Util::Model

      # Creates an instance of GetUnassignBodyWrapper
      def initialize
        @get_unassigned = nil
        @key_modified = Hash.new
      end

        # The method to get the get_unassigned
        # @return An instance of Assign

      def unassigned
        @get_unassigned
      end

        # The method to set the value to get_unassigned
        # @param get_unassigned [Assign] An instance of Assign

      def unassigned=(get_unassigned)
        if get_unassigned!=nil and !get_unassigned.is_a? Assign
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: get_unassigned EXPECTED TYPE: Assign', nil, nil)
        end
        @get_unassigned = get_unassigned
        @key_modified['get_unassigned'] = 1
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
