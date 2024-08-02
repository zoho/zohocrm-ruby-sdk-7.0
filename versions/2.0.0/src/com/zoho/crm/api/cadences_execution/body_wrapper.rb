require_relative '../util/model'

module ZOHOCRMSDK
  module CadencesExecution
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @cadences_ids = nil
        @ids = nil
        @key_modified = Hash.new
      end

        # The method to get the cadences_ids
        # @return An instance of Array

      def cadences_ids
        @cadences_ids
      end

        # The method to set the value to cadences_ids
        # @param cadences_ids [Array] An instance of Array

      def cadences_ids=(cadences_ids)
        if cadences_ids!=nil and !cadences_ids.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cadences_ids EXPECTED TYPE: Array', nil, nil)
        end
        @cadences_ids = cadences_ids
        @key_modified['cadences_ids'] = 1
      end

        # The method to get the ids
        # @return An instance of Array

      def ids
        @ids
      end

        # The method to set the value to ids
        # @param ids [Array] An instance of Array

      def ids=(ids)
        if ids!=nil and !ids.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ids EXPECTED TYPE: Array', nil, nil)
        end
        @ids = ids
        @key_modified['ids'] = 1
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
