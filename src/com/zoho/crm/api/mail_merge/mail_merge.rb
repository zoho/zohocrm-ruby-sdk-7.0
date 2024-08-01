require_relative '../util/model'

module ZOHOCRMSDK
  module MailMerge
    class MailMerge
      include Util::Model

      # Creates an instance of MailMerge
      def initialize
        @mail_merge_template = nil
        @from_address = nil
        @to_address = nil
        @cc_email = nil
        @bcc_email = nil
        @subject = nil
        @message = nil
        @type = nil
        @attachment_name = nil
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

        # The method to get the from_address
        # @return An instance of Address

      def from_address
        @from_address
      end

        # The method to set the value to from_address
        # @param from_address [Address] An instance of Address

      def from_address=(from_address)
        if from_address!=nil and !from_address.is_a? Address
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from_address EXPECTED TYPE: Address', nil, nil)
        end
        @from_address = from_address
        @key_modified['from_address'] = 1
      end

        # The method to get the to_address
        # @return An instance of Array

      def to_address
        @to_address
      end

        # The method to set the value to to_address
        # @param to_address [Array] An instance of Array

      def to_address=(to_address)
        if to_address!=nil and !to_address.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to_address EXPECTED TYPE: Array', nil, nil)
        end
        @to_address = to_address
        @key_modified['to_address'] = 1
      end

        # The method to get the cc_email
        # @return An instance of Array

      def cc_email
        @cc_email
      end

        # The method to set the value to cc_email
        # @param cc_email [Array] An instance of Array

      def cc_email=(cc_email)
        if cc_email!=nil and !cc_email.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cc_email EXPECTED TYPE: Array', nil, nil)
        end
        @cc_email = cc_email
        @key_modified['cc_email'] = 1
      end

        # The method to get the bcc_email
        # @return An instance of Array

      def bcc_email
        @bcc_email
      end

        # The method to set the value to bcc_email
        # @param bcc_email [Array] An instance of Array

      def bcc_email=(bcc_email)
        if bcc_email!=nil and !bcc_email.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bcc_email EXPECTED TYPE: Array', nil, nil)
        end
        @bcc_email = bcc_email
        @key_modified['bcc_email'] = 1
      end

        # The method to get the subject
        # @return A String value

      def subject
        @subject
      end

        # The method to set the value to subject
        # @param subject [String] A String

      def subject=(subject)
        if subject!=nil and !subject.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subject EXPECTED TYPE: String', nil, nil)
        end
        @subject = subject
        @key_modified['subject'] = 1
      end

        # The method to get the message
        # @return A String value

      def message
        @message
      end

        # The method to set the value to message
        # @param message [String] A String

      def message=(message)
        if message!=nil and !message.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: message EXPECTED TYPE: String', nil, nil)
        end
        @message = message
        @key_modified['message'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the attachment_name
        # @return A String value

      def attachment_name
        @attachment_name
      end

        # The method to set the value to attachment_name
        # @param attachment_name [String] A String

      def attachment_name=(attachment_name)
        if attachment_name!=nil and !attachment_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment_name EXPECTED TYPE: String', nil, nil)
        end
        @attachment_name = attachment_name
        @key_modified['attachment_name'] = 1
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
