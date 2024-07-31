require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class AcknowledgeVisitor
      include Util::Model

      # Creates an instance of AcknowledgeVisitor
      def initialize
        @auto_response_rule = nil
        @template_id = nil
        @key_modified = Hash.new
      end

        # The method to get the auto_response_rule
        # @return An instance of AutoResponseRule

      def auto_response_rule
        @auto_response_rule
      end

        # The method to set the value to auto_response_rule
        # @param auto_response_rule [AutoResponseRule] An instance of AutoResponseRule

      def auto_response_rule=(auto_response_rule)
        if auto_response_rule!=nil and !auto_response_rule.is_a? AutoResponseRule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: auto_response_rule EXPECTED TYPE: AutoResponseRule', nil, nil)
        end
        @auto_response_rule = auto_response_rule
        @key_modified['auto_response_rule'] = 1
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
