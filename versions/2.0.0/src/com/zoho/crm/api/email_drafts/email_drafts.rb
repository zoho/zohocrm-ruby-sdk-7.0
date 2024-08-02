require_relative '../util/model'

module ZOHOCRMSDK
  module EmailDrafts
    class EmailDrafts
      include Util::Model

      # Creates an instance of EmailDrafts
      def initialize
        @id = nil
        @modified_time = nil
        @created_time = nil
        @from = nil
        @to = nil
        @reply_to = nil
        @cc = nil
        @bcc = nil
        @template = nil
        @inventory_details = nil
        @attachments = nil
        @schedule_details = nil
        @rich_text = nil
        @email_opt_out = nil
        @subject = nil
        @content = nil
        @summary = nil
        @key_modified = Hash.new
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
      end

        # The method to get the from
        # @return A String value

      def from
        @from
      end

        # The method to set the value to from
        # @param from [String] A String

      def from=(from)
        if from!=nil and !from.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: String', nil, nil)
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

        # The method to get the reply_to
        # @return A String value

      def reply_to
        @reply_to
      end

        # The method to set the value to reply_to
        # @param reply_to [String] A String

      def reply_to=(reply_to)
        if reply_to!=nil and !reply_to.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reply_to EXPECTED TYPE: String', nil, nil)
        end
        @reply_to = reply_to
        @key_modified['reply_to'] = 1
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

        # The method to get the schedule_details
        # @return An instance of ScheduleDetails

      def schedule_details
        @schedule_details
      end

        # The method to set the value to schedule_details
        # @param schedule_details [ScheduleDetails] An instance of ScheduleDetails

      def schedule_details=(schedule_details)
        if schedule_details!=nil and !schedule_details.is_a? ScheduleDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: schedule_details EXPECTED TYPE: ScheduleDetails', nil, nil)
        end
        @schedule_details = schedule_details
        @key_modified['schedule_details'] = 1
      end

        # The method to get the rich_text
        # @return A Boolean value

      def rich_text
        @rich_text
      end

        # The method to set the value to rich_text
        # @param rich_text [Boolean] A Boolean

      def rich_text=(rich_text)
        if rich_text!=nil and ! [true, false].include?rich_text
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rich_text EXPECTED TYPE: Boolean', nil, nil)
        end
        @rich_text = rich_text
        @key_modified['rich_text'] = 1
      end

        # The method to get the email_opt_out
        # @return A Boolean value

      def email_opt_out
        @email_opt_out
      end

        # The method to set the value to email_opt_out
        # @param email_opt_out [Boolean] A Boolean

      def email_opt_out=(email_opt_out)
        if email_opt_out!=nil and ! [true, false].include?email_opt_out
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_opt_out EXPECTED TYPE: Boolean', nil, nil)
        end
        @email_opt_out = email_opt_out
        @key_modified['email_opt_out'] = 1
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

        # The method to get the summary
        # @return A String value

      def summary
        @summary
      end

        # The method to set the value to summary
        # @param summary [String] A String

      def summary=(summary)
        if summary!=nil and !summary.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: summary EXPECTED TYPE: String', nil, nil)
        end
        @summary = summary
        @key_modified['summary'] = 1
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
