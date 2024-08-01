require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module MailMerge
    class DownloadMailMerge
      include Util::Model

      # Creates an instance of DownloadMailMerge
      def initialize
        @mail_merge_template = nil
        @output_format = nil
        @file_name = nil
        @password = nil
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

        # The method to get the output_format
        # @return An instance of Util::Choice

      def output_format
        @output_format
      end

        # The method to set the value to output_format
        # @param output_format [Util::Choice] An instance of Util::Choice

      def output_format=(output_format)
        if output_format!=nil and !output_format.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: output_format EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @output_format = output_format
        @key_modified['output_format'] = 1
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

        # The method to get the password
        # @return A String value

      def password
        @password
      end

        # The method to set the value to password
        # @param password [String] A String

      def password=(password)
        if password!=nil and !password.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: password EXPECTED TYPE: String', nil, nil)
        end
        @password = password
        @key_modified['password'] = 1
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
