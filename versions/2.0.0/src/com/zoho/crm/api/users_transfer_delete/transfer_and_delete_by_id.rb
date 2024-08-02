require_relative '../util/model'

module ZOHOCRMSDK
  module UsersTransferDelete
    class TransferAndDeleteByID
      include Util::Model

      # Creates an instance of TransferAndDeleteByID
      def initialize
        @transfer = nil
        @move_subordinate = nil
        @key_modified = Hash.new
      end

        # The method to get the transfer
        # @return An instance of Transfer

      def transfer
        @transfer
      end

        # The method to set the value to transfer
        # @param transfer [Transfer] An instance of Transfer

      def transfer=(transfer)
        if transfer!=nil and !transfer.is_a? Transfer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transfer EXPECTED TYPE: Transfer', nil, nil)
        end
        @transfer = transfer
        @key_modified['transfer'] = 1
      end

        # The method to get the move_subordinate
        # @return An instance of MoveSubordinate

      def move_subordinate
        @move_subordinate
      end

        # The method to set the value to move_subordinate
        # @param move_subordinate [MoveSubordinate] An instance of MoveSubordinate

      def move_subordinate=(move_subordinate)
        if move_subordinate!=nil and !move_subordinate.is_a? MoveSubordinate
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: move_subordinate EXPECTED TYPE: MoveSubordinate', nil, nil)
        end
        @move_subordinate = move_subordinate
        @key_modified['move_subordinate'] = 1
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
