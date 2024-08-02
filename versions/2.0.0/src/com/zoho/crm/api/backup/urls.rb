require_relative '../util/model'

module ZOHOCRMSDK
  module Backup
    class Urls
      include Util::Model

      # Creates an instance of Urls
      def initialize
        @data_links = nil
        @attachment_links = nil
        @expiry_date = nil
        @key_modified = Hash.new
      end

        # The method to get the data_links
        # @return An instance of Array

      def data_links
        @data_links
      end

        # The method to set the value to data_links
        # @param data_links [Array] An instance of Array

      def data_links=(data_links)
        if data_links!=nil and !data_links.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_links EXPECTED TYPE: Array', nil, nil)
        end
        @data_links = data_links
        @key_modified['data_links'] = 1
      end

        # The method to get the attachment_links
        # @return An instance of Array

      def attachment_links
        @attachment_links
      end

        # The method to set the value to attachment_links
        # @param attachment_links [Array] An instance of Array

      def attachment_links=(attachment_links)
        if attachment_links!=nil and !attachment_links.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment_links EXPECTED TYPE: Array', nil, nil)
        end
        @attachment_links = attachment_links
        @key_modified['attachment_links'] = 1
      end

        # The method to get the expiry_date
        # @return An instance of DateTime

      def expiry_date
        @expiry_date
      end

        # The method to set the value to expiry_date
        # @param expiry_date [DateTime] An instance of DateTime

      def expiry_date=(expiry_date)
        if expiry_date!=nil and !expiry_date.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: expiry_date EXPECTED TYPE: DateTime', nil, nil)
        end
        @expiry_date = expiry_date
        @key_modified['expiry_date'] = 1
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
