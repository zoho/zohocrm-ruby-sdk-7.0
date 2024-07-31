require_relative '../util/model'

module ZOHOCRMSDK
  module MassDeleteTags
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @mass_delete = nil
        @key_modified = Hash.new
      end

        # The method to get the mass_delete
        # @return An instance of Array

      def mass_delete
        @mass_delete
      end

        # The method to set the value to mass_delete
        # @param mass_delete [Array] An instance of Array

      def mass_delete=(mass_delete)
        if mass_delete!=nil and !mass_delete.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mass_delete EXPECTED TYPE: Array', nil, nil)
        end
        @mass_delete = mass_delete
        @key_modified['mass_delete'] = 1
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
