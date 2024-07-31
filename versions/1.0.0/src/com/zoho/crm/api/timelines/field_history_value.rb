require_relative '../util/model'

module ZOHOCRMSDK
  module Timelines
    class FieldHistoryValue
      include Util::Model

      # Creates an instance of FieldHistoryValue
      def initialize
        @new = nil
        @old = nil
        @key_modified = Hash.new
      end

        # The method to get the new
        # @return A String value

      def new
        @new
      end

        # The method to set the value to new
        # @param new [String] A String

      def new=(new)
        if new!=nil and !new.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: new EXPECTED TYPE: String', nil, nil)
        end
        @new = new
        @key_modified['new'] = 1
      end

        # The method to get the old
        # @return A String value

      def old
        @old
      end

        # The method to set the value to old
        # @param old [String] A String

      def old=(old)
        if old!=nil and !old.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: old EXPECTED TYPE: String', nil, nil)
        end
        @old = old
        @key_modified['old'] = 1
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
