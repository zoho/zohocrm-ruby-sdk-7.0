require_relative '../util/model'

module ZOHOCRMSDK
  module Features
    class Component
      include Util::Model

      # Creates an instance of Component
      def initialize
        @api_name = nil
        @module_supported = nil
        @details = nil
        @feature_label = nil
        @key_modified = Hash.new
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the module_supported
        # @return A Boolean value

      def module_supported
        @module_supported
      end

        # The method to set the value to module_supported
        # @param module_supported [Boolean] A Boolean

      def module_supported=(module_supported)
        if module_supported!=nil and ! [true, false].include?module_supported
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_supported EXPECTED TYPE: Boolean', nil, nil)
        end
        @module_supported = module_supported
        @key_modified['module_supported'] = 1
      end

        # The method to get the details
        # @return An instance of Detail

      def details
        @details
      end

        # The method to set the value to details
        # @param details [Detail] An instance of Detail

      def details=(details)
        if details!=nil and !details.is_a? Detail
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: details EXPECTED TYPE: Detail', nil, nil)
        end
        @details = details
        @key_modified['details'] = 1
      end

        # The method to get the feature_label
        # @return A String value

      def feature_label
        @feature_label
      end

        # The method to set the value to feature_label
        # @param feature_label [String] A String

      def feature_label=(feature_label)
        if feature_label!=nil and !feature_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feature_label EXPECTED TYPE: String', nil, nil)
        end
        @feature_label = feature_label
        @key_modified['feature_label'] = 1
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
