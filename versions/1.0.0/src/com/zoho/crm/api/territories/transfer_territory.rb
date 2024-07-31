require_relative '../util/model'

module ZOHOCRMSDK
  module Territories
    class TransferTerritory
      include Util::Model

      # Creates an instance of TransferTerritory
      def initialize
        @id = nil
        @transfer_to_id = nil
        @delete_previous_forecasts = nil
        @key_modified = Hash.new
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

        # The method to get the transfer_to_id
        # @return A Integer value

      def transfer_to_id
        @transfer_to_id
      end

        # The method to set the value to transfer_to_id
        # @param transfer_to_id [Integer] A Integer

      def transfer_to_id=(transfer_to_id)
        if transfer_to_id!=nil and !transfer_to_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transfer_to_id EXPECTED TYPE: Integer', nil, nil)
        end
        @transfer_to_id = transfer_to_id
        @key_modified['transfer_to_id'] = 1
      end

        # The method to get the delete_previous_forecasts
        # @return A Boolean value

      def delete_previous_forecasts
        @delete_previous_forecasts
      end

        # The method to set the value to delete_previous_forecasts
        # @param delete_previous_forecasts [Boolean] A Boolean

      def delete_previous_forecasts=(delete_previous_forecasts)
        if delete_previous_forecasts!=nil and ! [true, false].include?delete_previous_forecasts
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete_previous_forecasts EXPECTED TYPE: Boolean', nil, nil)
        end
        @delete_previous_forecasts = delete_previous_forecasts
        @key_modified['delete_previous_forecasts'] = 1
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
