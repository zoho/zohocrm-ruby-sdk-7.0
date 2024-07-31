require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class AcknowledgeVisitors
      include Util::Model

      # Creates an instance of AcknowledgeVisitors
      def initialize
        @template_name = nil
        @template_id = nil
        @from_address = nil
        @key_modified = Hash.new
      end

        # The method to get the template_name
        # @return A String value

      def template_name
        @template_name
      end

        # The method to set the value to template_name
        # @param template_name [String] A String

      def template_name=(template_name)
        if template_name!=nil and !template_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: template_name EXPECTED TYPE: String', nil, nil)
        end
        @template_name = template_name
        @key_modified['template_name'] = 1
      end

        # The method to get the template_id
        # @return A Integer value

      def template_id
        @template_id
      end

        # The method to set the value to template_id
        # @param template_id [Integer] A Integer

      def template_id=(template_id)
        if template_id!=nil and !template_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: template_id EXPECTED TYPE: Integer', nil, nil)
        end
        @template_id = template_id
        @key_modified['template_id'] = 1
      end

        # The method to get the from_address
        # @return An instance of FromAddress

      def from_address
        @from_address
      end

        # The method to set the value to from_address
        # @param from_address [FromAddress] An instance of FromAddress

      def from_address=(from_address)
        if from_address!=nil and !from_address.is_a? FromAddress
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from_address EXPECTED TYPE: FromAddress', nil, nil)
        end
        @from_address = from_address
        @key_modified['from_address'] = 1
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
