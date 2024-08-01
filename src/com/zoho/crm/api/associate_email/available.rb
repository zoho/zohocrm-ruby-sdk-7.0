require_relative '../util/model'

module ZOHOCRMSDK
  module AssociateEmail
    class Available
      include Util::Model

      # Creates an instance of Available
      def initialize
        @available = nil
        @record = nil
        @linked_record = nil
        @key_modified = Hash.new
      end

        # The method to get the available
        # @return A Boolean value

      def available
        @available
      end

        # The method to set the value to available
        # @param available [Boolean] A Boolean

      def available=(available)
        if available!=nil and ! [true, false].include?available
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: available EXPECTED TYPE: Boolean', nil, nil)
        end
        @available = available
        @key_modified['available'] = 1
      end

        # The method to get the record
        # @return An instance of Record

      def record
        @record
      end

        # The method to set the value to record
        # @param record [Record] An instance of Record

      def record=(record)
        if record!=nil and !record.is_a? Record
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record EXPECTED TYPE: Record', nil, nil)
        end
        @record = record
        @key_modified['record'] = 1
      end

        # The method to get the linked_record
        # @return An instance of LinkedRecord

      def linked_record
        @linked_record
      end

        # The method to set the value to linked_record
        # @param linked_record [LinkedRecord] An instance of LinkedRecord

      def linked_record=(linked_record)
        if linked_record!=nil and !linked_record.is_a? LinkedRecord
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linked_record EXPECTED TYPE: LinkedRecord', nil, nil)
        end
        @linked_record = linked_record
        @key_modified['linked_record'] = 1
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
