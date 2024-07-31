require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyConfigurableApps
    class Wrapper
      include Util::Model

      # Creates an instance of Wrapper
      def initialize
        @privacy_configurable_apps = nil
        @key_modified = Hash.new
      end

        # The method to get the privacy_configurable_apps
        # @return An instance of Array

      def privacy_configurable_apps
        @privacy_configurable_apps
      end

        # The method to set the value to privacy_configurable_apps
        # @param privacy_configurable_apps [Array] An instance of Array

      def privacy_configurable_apps=(privacy_configurable_apps)
        if privacy_configurable_apps!=nil and !privacy_configurable_apps.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: privacy_configurable_apps EXPECTED TYPE: Array', nil, nil)
        end
        @privacy_configurable_apps = privacy_configurable_apps
        @key_modified['privacy_configurable_apps'] = 1
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
