require_relative '../util/model'

module ZOHOCRMSDK
  module Definition
    class Definition
      include Util::Model

      # Creates an instance of Definition
      def initialize
        @root_element_name = nil
        @extradetails = nil
        @properties = nil
        @key_modified = Hash.new
      end

        # The method to get the root_element_name
        # @return A String value

      def root_element_name
        @root_element_name
      end

        # The method to set the value to root_element_name
        # @param root_element_name [String] A String

      def root_element_name=(root_element_name)
        if root_element_name!=nil and !root_element_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: root_element_name EXPECTED TYPE: String', nil, nil)
        end
        @root_element_name = root_element_name
        @key_modified['root_element_name'] = 1
      end

        # The method to get the extradetails
        # @return An instance of Hash

      def extradetails
        @extradetails
      end

        # The method to set the value to extradetails
        # @param extradetails [Hash] An instance of Hash

      def extradetails=(extradetails)
        if extradetails!=nil and !extradetails.is_a? Hash
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: extradetails EXPECTED TYPE: Hash', nil, nil)
        end
        @extradetails = extradetails
        @key_modified['extraDetails'] = 1
      end

        # The method to get the properties
        # @return An instance of Array

      def properties
        @properties
      end

        # The method to set the value to properties
        # @param properties [Array] An instance of Array

      def properties=(properties)
        if properties!=nil and !properties.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: properties EXPECTED TYPE: Array', nil, nil)
        end
        @properties = properties
        @key_modified['properties'] = 1
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
