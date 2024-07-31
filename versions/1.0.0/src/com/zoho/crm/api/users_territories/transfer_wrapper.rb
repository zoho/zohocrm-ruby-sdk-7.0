require_relative '../util/model'

module ZOHOCRMSDK
  module UsersTerritories
    class TransferWrapper
      include Util::Model

      # Creates an instance of TransferWrapper
      def initialize
        @transfer_and_delink = nil
        @key_modified = Hash.new
      end

        # The method to get the transfer_and_delink
        # @return An instance of Array

      def transfer_and_delink
        @transfer_and_delink
      end

        # The method to set the value to transfer_and_delink
        # @param transfer_and_delink [Array] An instance of Array

      def transfer_and_delink=(transfer_and_delink)
        if transfer_and_delink!=nil and !transfer_and_delink.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transfer_and_delink EXPECTED TYPE: Array', nil, nil)
        end
        @transfer_and_delink = transfer_and_delink
        @key_modified['transfer_and_delink'] = 1
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
