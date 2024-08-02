require_relative '../util/model'

module ZOHOCRMSDK
  module HipaaCompliance
    class HipaaCompliance
      include Util::Model

      # Creates an instance of HipaaCompliance
      def initialize
        @enabled = nil
        @enabled_for_modules = nil
        @restrict_to_zoho_apps = nil
        @restrict_data_access_through_api = nil
        @restrict_data_in_export = nil
        @restrict_to_third_party_apps = nil
        @key_modified = Hash.new
      end

        # The method to get the enabled
        # @return A Boolean value

      def enabled
        @enabled
      end

        # The method to set the value to enabled
        # @param enabled [Boolean] A Boolean

      def enabled=(enabled)
        if enabled!=nil and ! [true, false].include?enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @enabled = enabled
        @key_modified['enabled'] = 1
      end

        # The method to get the enabled_for_modules
        # @return An instance of Array

      def enabled_for_modules
        @enabled_for_modules
      end

        # The method to set the value to enabled_for_modules
        # @param enabled_for_modules [Array] An instance of Array

      def enabled_for_modules=(enabled_for_modules)
        if enabled_for_modules!=nil and !enabled_for_modules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enabled_for_modules EXPECTED TYPE: Array', nil, nil)
        end
        @enabled_for_modules = enabled_for_modules
        @key_modified['enabled_for_modules'] = 1
      end

        # The method to get the restrict_to_zoho_apps
        # @return A Boolean value

      def restrict_to_zoho_apps
        @restrict_to_zoho_apps
      end

        # The method to set the value to restrict_to_zoho_apps
        # @param restrict_to_zoho_apps [Boolean] A Boolean

      def restrict_to_zoho_apps=(restrict_to_zoho_apps)
        if restrict_to_zoho_apps!=nil and ! [true, false].include?restrict_to_zoho_apps
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_to_zoho_apps EXPECTED TYPE: Boolean', nil, nil)
        end
        @restrict_to_zoho_apps = restrict_to_zoho_apps
        @key_modified['restrict_to_zoho_apps'] = 1
      end

        # The method to get the restrict_data_access_through_api
        # @return A Boolean value

      def restrict_data_access_through_api
        @restrict_data_access_through_api
      end

        # The method to set the value to restrict_data_access_through_api
        # @param restrict_data_access_through_api [Boolean] A Boolean

      def restrict_data_access_through_api=(restrict_data_access_through_api)
        if restrict_data_access_through_api!=nil and ! [true, false].include?restrict_data_access_through_api
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_data_access_through_api EXPECTED TYPE: Boolean', nil, nil)
        end
        @restrict_data_access_through_api = restrict_data_access_through_api
        @key_modified['restrict_data_access_through_api'] = 1
      end

        # The method to get the restrict_data_in_export
        # @return A Boolean value

      def restrict_data_in_export
        @restrict_data_in_export
      end

        # The method to set the value to restrict_data_in_export
        # @param restrict_data_in_export [Boolean] A Boolean

      def restrict_data_in_export=(restrict_data_in_export)
        if restrict_data_in_export!=nil and ! [true, false].include?restrict_data_in_export
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_data_in_export EXPECTED TYPE: Boolean', nil, nil)
        end
        @restrict_data_in_export = restrict_data_in_export
        @key_modified['restrict_data_in_export'] = 1
      end

        # The method to get the restrict_to_third_party_apps
        # @return An instance of Array

      def restrict_to_third_party_apps
        @restrict_to_third_party_apps
      end

        # The method to set the value to restrict_to_third_party_apps
        # @param restrict_to_third_party_apps [Array] An instance of Array

      def restrict_to_third_party_apps=(restrict_to_third_party_apps)
        if restrict_to_third_party_apps!=nil and !restrict_to_third_party_apps.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_to_third_party_apps EXPECTED TYPE: Array', nil, nil)
        end
        @restrict_to_third_party_apps = restrict_to_third_party_apps
        @key_modified['restrict_to_third_party_apps'] = 1
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
