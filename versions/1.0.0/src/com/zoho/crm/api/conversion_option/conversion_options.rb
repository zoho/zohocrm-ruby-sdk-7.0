require_relative '../modules/modules'
require_relative '../record/record'
require_relative '../util/model'

module ZOHOCRMSDK
  module ConversionOption
    class ConversionOptions
      include Util::Model

      # Creates an instance of ConversionOptions
      def initialize
        @module_preference = nil
        @contacts = nil
        @deals = nil
        @accounts = nil
        @preference_field_matched_value = nil
        @modules_with_multiple_layouts = nil
        @key_modified = Hash.new
      end

        # The method to get the module_preference
        # @return An instance of Modules::Modules

      def module_preference
        @module_preference
      end

        # The method to set the value to module_preference
        # @param module_preference [Modules::Modules] An instance of Modules::Modules

      def module_preference=(module_preference)
        if module_preference!=nil and !module_preference.is_a? Modules::Modules
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_preference EXPECTED TYPE: Modules', nil, nil)
        end
        @module_preference = module_preference
        @key_modified['module_preference'] = 1
      end

        # The method to get the contacts
        # @return An instance of Array

      def contacts
        @contacts
      end

        # The method to set the value to contacts
        # @param contacts [Array] An instance of Array

      def contacts=(contacts)
        if contacts!=nil and !contacts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contacts EXPECTED TYPE: Array', nil, nil)
        end
        @contacts = contacts
        @key_modified['Contacts'] = 1
      end

        # The method to get the deals
        # @return An instance of Array

      def deals
        @deals
      end

        # The method to set the value to deals
        # @param deals [Array] An instance of Array

      def deals=(deals)
        if deals!=nil and !deals.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: Array', nil, nil)
        end
        @deals = deals
        @key_modified['Deals'] = 1
      end

        # The method to get the accounts
        # @return An instance of Array

      def accounts
        @accounts
      end

        # The method to set the value to accounts
        # @param accounts [Array] An instance of Array

      def accounts=(accounts)
        if accounts!=nil and !accounts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: accounts EXPECTED TYPE: Array', nil, nil)
        end
        @accounts = accounts
        @key_modified['Accounts'] = 1
      end

        # The method to get the preference_field_matched_value
        # @return An instance of PreferenceFieldMatchedValue

      def preference_field_matched_value
        @preference_field_matched_value
      end

        # The method to set the value to preference_field_matched_value
        # @param preference_field_matched_value [PreferenceFieldMatchedValue] An instance of PreferenceFieldMatchedValue

      def preference_field_matched_value=(preference_field_matched_value)
        if preference_field_matched_value!=nil and !preference_field_matched_value.is_a? PreferenceFieldMatchedValue
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: preference_field_matched_value EXPECTED TYPE: PreferenceFieldMatchedValue', nil, nil)
        end
        @preference_field_matched_value = preference_field_matched_value
        @key_modified['preference_field_matched_value'] = 1
      end

        # The method to get the modules_with_multiple_layouts
        # @return An instance of Array

      def modules_with_multiple_layouts
        @modules_with_multiple_layouts
      end

        # The method to set the value to modules_with_multiple_layouts
        # @param modules_with_multiple_layouts [Array] An instance of Array

      def modules_with_multiple_layouts=(modules_with_multiple_layouts)
        if modules_with_multiple_layouts!=nil and !modules_with_multiple_layouts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modules_with_multiple_layouts EXPECTED TYPE: Array', nil, nil)
        end
        @modules_with_multiple_layouts = modules_with_multiple_layouts
        @key_modified['modules_with_multiple_layouts'] = 1
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
