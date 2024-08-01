require_relative '../util/model'

module ZOHOCRMSDK
  module ConversionOption
    class PreferenceFieldMatch
      include Util::Model

      # Creates an instance of PreferenceFieldMatch
      def initialize
        @field = nil
        @matched_lead_value = nil
        @key_modified = Hash.new
      end

        # The method to get the field
        # @return An instance of Field

      def field
        @field
      end

        # The method to set the value to field
        # @param field [Field] An instance of Field

      def field=(field)
        if field!=nil and !field.is_a? Field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: Field', nil, nil)
        end
        @field = field
        @key_modified['field'] = 1
      end

        # The method to get the matched_lead_value
        # @return A String value

      def matched_lead_value
        @matched_lead_value
      end

        # The method to set the value to matched_lead_value
        # @param matched_lead_value [String] A String

      def matched_lead_value=(matched_lead_value)
        if matched_lead_value!=nil and !matched_lead_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: matched_lead_value EXPECTED TYPE: String', nil, nil)
        end
        @matched_lead_value = matched_lead_value
        @key_modified['matched_lead_value'] = 1
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
