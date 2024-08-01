require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyPreference
    class Config
      include Util::Model

      # Creates an instance of Config
      def initialize
        @tpt = nil
        @section = nil
        @zoho_integ = nil
        @key_modified = Hash.new
      end

        # The method to get the tpt
        # @return An instance of Array

      def tpt
        @tpt
      end

        # The method to set the value to tpt
        # @param tpt [Array] An instance of Array

      def tpt=(tpt)
        if tpt!=nil and !tpt.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tpt EXPECTED TYPE: Array', nil, nil)
        end
        @tpt = tpt
        @key_modified['tpt'] = 1
      end

        # The method to get the section
        # @return An instance of Array

      def section
        @section
      end

        # The method to set the value to section
        # @param section [Array] An instance of Array

      def section=(section)
        if section!=nil and !section.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: section EXPECTED TYPE: Array', nil, nil)
        end
        @section = section
        @key_modified['section'] = 1
      end

        # The method to get the zoho_integ
        # @return An instance of Array

      def zoho_integ
        @zoho_integ
      end

        # The method to set the value to zoho_integ
        # @param zoho_integ [Array] An instance of Array

      def zoho_integ=(zoho_integ)
        if zoho_integ!=nil and !zoho_integ.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zoho_integ EXPECTED TYPE: Array', nil, nil)
        end
        @zoho_integ = zoho_integ
        @key_modified['zoho_integ'] = 1
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
