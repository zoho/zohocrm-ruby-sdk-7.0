require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class SocialMedia
      include Util::Model

      # Creates an instance of SocialMedia
      def initialize
        @media_type = nil
        @media_url = nil
        @key_modified = Hash.new
      end

        # The method to get the media_type
        # @return A String value

      def media_type
        @media_type
      end

        # The method to set the value to media_type
        # @param media_type [String] A String

      def media_type=(media_type)
        if media_type!=nil and !media_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: media_type EXPECTED TYPE: String', nil, nil)
        end
        @media_type = media_type
        @key_modified['media_type'] = 1
      end

        # The method to get the media_url
        # @return An instance of Array

      def media_url
        @media_url
      end

        # The method to set the value to media_url
        # @param media_url [Array] An instance of Array

      def media_url=(media_url)
        if media_url!=nil and !media_url.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: media_url EXPECTED TYPE: Array', nil, nil)
        end
        @media_url = media_url
        @key_modified['media_url'] = 1
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
