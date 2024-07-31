require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module SendMail
    class Data
      include Util::Model

      # Creates an instance of Data
      def initialize
        @from = nil
        @to = nil
        @cc = nil
        @bcc = nil
        @reply_to = nil
        @org_email = nil
        @scheduled_time = nil
        @mail_format = nil
        @consent_email = nil
        @content = nil
        @subject = nil
        @in_reply_to = nil
        @template = nil
        @inventory_details = nil
        @data_subject_request = nil
        @attachments = nil
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

        # The method to get the reply_to
        # @return An instance of To

      def reply_to
        @reply_to
      end

        # The method to set the value to reply_to
        # @param reply_to [To] An instance of To

      def reply_to=(reply_to)
        if reply_to!=nil and !reply_to.is_a? To
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reply_to EXPECTED TYPE: To', nil, nil)
        end
        @reply_to = reply_to
        @key_modified['reply_to'] = 1
      end

        # The method to get the org_email
        # @return A Boolean value

      def org_email
        @org_email
      end

        # The method to set the value to org_email
        # @param org_email [Boolean] A Boolean

      def org_email=(org_email)
        if org_email!=nil and ! [true, false].include?org_email
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: org_email EXPECTED TYPE: Boolean', nil, nil)
        end
        @org_email = org_email
        @key_modified['org_email'] = 1
      end

        # The method to get the scheduled_time
        # @return An instance of DateTime

      def scheduled_time
        @scheduled_time
      end

        # The method to set the value to scheduled_time
        # @param scheduled_time [DateTime] An instance of DateTime

      def scheduled_time=(scheduled_time)
        if scheduled_time!=nil and !scheduled_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scheduled_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @scheduled_time = scheduled_time
        @key_modified['scheduled_time'] = 1
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

        # The method to get the consent_email
        # @return A Boolean value

      def consent_email
        @consent_email
      end

        # The method to set the value to consent_email
        # @param consent_email [Boolean] A Boolean

      def consent_email=(consent_email)
        if consent_email!=nil and ! [true, false].include?consent_email
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_email EXPECTED TYPE: Boolean', nil, nil)
        end
        @consent_email = consent_email
        @key_modified['consent_email'] = 1
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

        # The method to get the in_reply_to
        # @return An instance of InReplyTo

      def in_reply_to
        @in_reply_to
      end

        # The method to set the value to in_reply_to
        # @param in_reply_to [InReplyTo] An instance of InReplyTo

      def in_reply_to=(in_reply_to)
        if in_reply_to!=nil and !in_reply_to.is_a? InReplyTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: in_reply_to EXPECTED TYPE: InReplyTo', nil, nil)
        end
        @in_reply_to = in_reply_to
        @key_modified['in_reply_to'] = 1
      end

        # The method to get the template
        # @return An instance of Template

      def template
        @template
      end

        # The method to set the value to template
        # @param template [Template] An instance of Template

      def template=(template)
        if template!=nil and !template.is_a? Template
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: template EXPECTED TYPE: Template', nil, nil)
        end
        @template = template
        @key_modified['template'] = 1
      end

        # The method to get the inventory_details
        # @return An instance of InventoryDetails

      def inventory_details
        @inventory_details
      end

        # The method to set the value to inventory_details
        # @param inventory_details [InventoryDetails] An instance of InventoryDetails

      def inventory_details=(inventory_details)
        if inventory_details!=nil and !inventory_details.is_a? InventoryDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inventory_details EXPECTED TYPE: InventoryDetails', nil, nil)
        end
        @inventory_details = inventory_details
        @key_modified['inventory_details'] = 1
      end

        # The method to get the data_subject_request
        # @return An instance of DataSubjectRequest

      def data_subject_request
        @data_subject_request
      end

        # The method to set the value to data_subject_request
        # @param data_subject_request [DataSubjectRequest] An instance of DataSubjectRequest

      def data_subject_request=(data_subject_request)
        if data_subject_request!=nil and !data_subject_request.is_a? DataSubjectRequest
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_subject_request EXPECTED TYPE: DataSubjectRequest', nil, nil)
        end
        @data_subject_request = data_subject_request
        @key_modified['data_subject_request'] = 1
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
