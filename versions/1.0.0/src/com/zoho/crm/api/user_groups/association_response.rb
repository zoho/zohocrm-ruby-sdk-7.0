require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class AssociationResponse
      include Util::Model

      # Creates an instance of AssociationResponse
      def initialize
        @type = nil
        @resource = nil
        @detail = nil
        @key_modified = Hash.new
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the resource
        # @return An instance of Resource

      def resource
        @resource
      end

        # The method to set the value to resource
        # @param resource [Resource] An instance of Resource

      def resource=(resource)
        if resource!=nil and !resource.is_a? Resource
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resource EXPECTED TYPE: Resource', nil, nil)
        end
        @resource = resource
        @key_modified['resource'] = 1
      end

        # The method to get the detail
        # @return An instance of AssociationModule

      def detail
        @detail
      end

        # The method to set the value to detail
        # @param detail [AssociationModule] An instance of AssociationModule

      def detail=(detail)
        if detail!=nil and !detail.is_a? AssociationModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: detail EXPECTED TYPE: AssociationModule', nil, nil)
        end
        @detail = detail
        @key_modified['detail'] = 1
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
