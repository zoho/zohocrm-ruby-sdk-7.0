require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module AssociateEmail
    class AssociateEmail
      include Util::Model

      # Creates an instance of AssociateEmail
      def initialize
        @from = nil
        @to = nil
        @cc = nil
        @bcc = nil
        @attachments = nil
        @content = nil
        @mail_format = nil
        @subject = nil
        @original_message_id = nil
        @sent = nil
        @date_time = nil
        @linked_record = nil
        @key_modified = Hash.new
      end

        # The method to get the from
        # @return An instance of From

      def from
        @from
      end

        # The method to set the value to from
        # @param from [From] An instance of From

      def from=(from)
        if from!=nil and !from.is_a? From
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: From', nil, nil)
        end
        @from = from
        @key_modified['from'] = 1
      end

        # The method to get the to
        # @return An instance of Array

      def to
        @to
      end

        # The method to set the value to to
        # @param to [Array] An instance of Array

      def to=(to)
        if to!=nil and !to.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to EXPECTED TYPE: Array', nil, nil)
        end
        @to = to
        @key_modified['to'] = 1
      end

        # The method to get the cc
        # @return An instance of Array

      def cc
        @cc
      end

        # The method to set the value to cc
        # @param cc [Array] An instance of Array

      def cc=(cc)
        if cc!=nil and !cc.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cc EXPECTED TYPE: Array', nil, nil)
        end
        @cc = cc
        @key_modified['cc'] = 1
      end

        # The method to get the bcc
        # @return An instance of Array

      def bcc
        @bcc
      end

        # The method to set the value to bcc
        # @param bcc [Array] An instance of Array

      def bcc=(bcc)
        if bcc!=nil and !bcc.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bcc EXPECTED TYPE: Array', nil, nil)
        end
        @bcc = bcc
        @key_modified['bcc'] = 1
      end

        # The method to get the attachments
        # @return An instance of Array

      def attachments
        @attachments
      end

        # The method to set the value to attachments
        # @param attachments [Array] An instance of Array

      def attachments=(attachments)
        if attachments!=nil and !attachments.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachments EXPECTED TYPE: Array', nil, nil)
        end
        @attachments = attachments
        @key_modified['attachments'] = 1
      end

        # The method to get the content
        # @return A String value

      def content
        @content
      end

        # The method to set the value to content
        # @param content [String] A String

      def content=(content)
        if content!=nil and !content.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: content EXPECTED TYPE: String', nil, nil)
        end
        @content = content
        @key_modified['content'] = 1
      end

        # The method to get the mail_format
        # @return An instance of Util::Choice

      def mail_format
        @mail_format
      end

        # The method to set the value to mail_format
        # @param mail_format [Util::Choice] An instance of Util::Choice

      def mail_format=(mail_format)
        if mail_format!=nil and !mail_format.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mail_format EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @mail_format = mail_format
        @key_modified['mail_format'] = 1
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

        # The method to get the original_message_id
        # @return A String value

      def original_message_id
        @original_message_id
      end

        # The method to set the value to original_message_id
        # @param original_message_id [String] A String

      def original_message_id=(original_message_id)
        if original_message_id!=nil and !original_message_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: original_message_id EXPECTED TYPE: String', nil, nil)
        end
        @original_message_id = original_message_id
        @key_modified['original_message_id'] = 1
      end

        # The method to get the sent
        # @return A Boolean value

      def sent
        @sent
      end

        # The method to set the value to sent
        # @param sent [Boolean] A Boolean

      def sent=(sent)
        if sent!=nil and ! [true, false].include?sent
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sent EXPECTED TYPE: Boolean', nil, nil)
        end
        @sent = sent
        @key_modified['sent'] = 1
      end

        # The method to get the date_time
        # @return An instance of DateTime

      def date_time
        @date_time
      end

        # The method to set the value to date_time
        # @param date_time [DateTime] An instance of DateTime

      def date_time=(date_time)
        if date_time!=nil and !date_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: date_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @date_time = date_time
        @key_modified['date_time'] = 1
      end

        # The method to get the linked_record
        # @return An instance of LinkedRecord

      def linked_record
        @linked_record
      end

        # The method to set the value to linked_record
        # @param linked_record [LinkedRecord] An instance of LinkedRecord

      def linked_record=(linked_record)
        if linked_record!=nil and !linked_record.is_a? LinkedRecord
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linked_record EXPECTED TYPE: LinkedRecord', nil, nil)
        end
        @linked_record = linked_record
        @key_modified['linked_record'] = 1
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
