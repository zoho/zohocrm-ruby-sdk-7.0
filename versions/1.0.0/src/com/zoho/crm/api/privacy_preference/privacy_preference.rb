require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyPreference
    class PrivacyPreference
      include Util::Model

      # Creates an instance of PrivacyPreference
      def initialize
        @preference = nil
        @config = nil
        @key_modified = Hash.new
      end

        # The method to get the preference
        # @return An instance of Preference

      def preference
        @preference
      end

        # The method to set the value to preference
        # @param preference [Preference] An instance of Preference

      def preference=(preference)
        if preference!=nil and !preference.is_a? Preference
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: preference EXPECTED TYPE: Preference', nil, nil)
        end
        @preference = preference
        @key_modified['preference'] = 1
      end

        # The method to get the config
        # @return An instance of Config

      def config
        @config
      end

        # The method to set the value to config
        # @param config [Config] An instance of Config

      def config=(config)
        if config!=nil and !config.is_a? Config
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: config EXPECTED TYPE: Config', nil, nil)
        end
        @config = config
        @key_modified['config'] = 1
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
