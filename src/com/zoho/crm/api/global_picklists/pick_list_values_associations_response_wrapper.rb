require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    require_relative 'pick_list_values_associations_response_handler'
    class PickListValuesAssociationsResponseWrapper
      include Util::Model
      include PickListValuesAssociationsResponseHandler

      # Creates an instance of PickListValuesAssociationsResponseWrapper
      def initialize
        @pick_list_values_associations = nil
        @key_modified = Hash.new
      end

        # The method to get the pick_list_values_associations
        # @return An instance of Array

      def pick_list_values_associations
        @pick_list_values_associations
      end

        # The method to set the value to pick_list_values_associations
        # @param pick_list_values_associations [Array] An instance of Array

      def pick_list_values_associations=(pick_list_values_associations)
        if pick_list_values_associations!=nil and !pick_list_values_associations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values_associations EXPECTED TYPE: Array', nil, nil)
        end
        @pick_list_values_associations = pick_list_values_associations
        @key_modified['pick_list_values_associations'] = 1
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
