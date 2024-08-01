require_relative '../util/model'

module ZOHOCRMSDK
  module MailMerge
    class DownloadMailMergeWrapper
      include Util::Model

      # Creates an instance of DownloadMailMergeWrapper
      def initialize
        @download_mail_merge = nil
        @key_modified = Hash.new
      end

        # The method to get the download_mail_merge
        # @return An instance of Array

      def download_mail_merge
        @download_mail_merge
      end

        # The method to set the value to download_mail_merge
        # @param download_mail_merge [Array] An instance of Array

      def download_mail_merge=(download_mail_merge)
        if download_mail_merge!=nil and !download_mail_merge.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: download_mail_merge EXPECTED TYPE: Array', nil, nil)
        end
        @download_mail_merge = download_mail_merge
        @key_modified['download_mail_merge'] = 1
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
