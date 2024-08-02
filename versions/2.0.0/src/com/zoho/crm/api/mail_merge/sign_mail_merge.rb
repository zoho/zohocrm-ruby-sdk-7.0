require_relative '../util/model'

module ZOHOCRMSDK
  module MailMerge
    class SignMailMerge
      include Util::Model

      # Creates an instance of SignMailMerge
      def initialize
        @mail_merge_template = nil
        @sign_in_order = nil
        @file_name = nil
        @signers = nil
        @key_modified = Hash.new
      end

        # The method to get the mail_merge_template
        # @return An instance of MailMergeTemplate

      def mail_merge_template
        @mail_merge_template
      end

        # The method to set the value to mail_merge_template
        # @param mail_merge_template [MailMergeTemplate] An instance of MailMergeTemplate

      def mail_merge_template=(mail_merge_template)
        if mail_merge_template!=nil and !mail_merge_template.is_a? MailMergeTemplate
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mail_merge_template EXPECTED TYPE: MailMergeTemplate', nil, nil)
        end
        @mail_merge_template = mail_merge_template
        @key_modified['mail_merge_template'] = 1
      end

        # The method to get the sign_in_order
        # @return A Boolean value

      def sign_in_order
        @sign_in_order
      end

        # The method to set the value to sign_in_order
        # @param sign_in_order [Boolean] A Boolean

      def sign_in_order=(sign_in_order)
        if sign_in_order!=nil and ! [true, false].include?sign_in_order
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sign_in_order EXPECTED TYPE: Boolean', nil, nil)
        end
        @sign_in_order = sign_in_order
        @key_modified['sign_in_order'] = 1
      end

        # The method to get the file_name
        # @return A String value

      def file_name
        @file_name
      end

        # The method to set the value to file_name
        # @param file_name [String] A String

      def file_name=(file_name)
        if file_name!=nil and !file_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_name EXPECTED TYPE: String', nil, nil)
        end
        @file_name = file_name
        @key_modified['file_name'] = 1
      end

        # The method to get the signers
        # @return An instance of Array

      def signers
        @signers
      end

        # The method to set the value to signers
        # @param signers [Array] An instance of Array

      def signers=(signers)
        if signers!=nil and !signers.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: signers EXPECTED TYPE: Array', nil, nil)
        end
        @signers = signers
        @key_modified['signers'] = 1
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
