require_relative '../users/minified_user'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module EmailRelatedRecords
    class Email
      include Util::Model

      # Creates an instance of Email
      def initialize
        @attachments = nil
        @thread_id = nil
        @cc = nil
        @summary = nil
        @owner = nil
        @read = nil
        @content = nil
        @sent = nil
        @subject = nil
        @activity_info = nil
        @intent = nil
        @sentiment_info = nil
        @message_id = nil
        @source = nil
        @linked_record = nil
        @sent_time = nil
        @emotion = nil
        @from = nil
        @to = nil
        @time = nil
        @status = nil
        @has_attachment = nil
        @has_thread_attachment = nil
        @editable = nil
        @mail_format = nil
        @reply_to = nil
        @key_modified = Hash.new
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

        # The method to get the thread_id
        # @return A Integer value

      def thread_id
        @thread_id
      end

        # The method to set the value to thread_id
        # @param thread_id [Integer] A Integer

      def thread_id=(thread_id)
        if thread_id!=nil and !thread_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: thread_id EXPECTED TYPE: Integer', nil, nil)
        end
        @thread_id = thread_id
        @key_modified['thread_id'] = 1
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

        # The method to get the owner
        # @return An instance of Users::MinifiedUser

      def owner
        @owner
      end

        # The method to set the value to owner
        # @param owner [Users::MinifiedUser] An instance of Users::MinifiedUser

      def owner=(owner)
        if owner!=nil and !owner.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @owner = owner
        @key_modified['owner'] = 1
      end

        # The method to get the read
        # @return A Boolean value

      def read
        @read
      end

        # The method to set the value to read
        # @param read [Boolean] A Boolean

      def read=(read)
        if read!=nil and ! [true, false].include?read
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: read EXPECTED TYPE: Boolean', nil, nil)
        end
        @read = read
        @key_modified['read'] = 1
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

        # The method to get the activity_info
        # @return A lang::Object value

      def activity_info
        @activity_info
      end

        # The method to set the value to activity_info
        # @param activity_info [lang::Object] A lang::Object

      def activity_info=(activity_info)
        @activity_info = activity_info
        @key_modified['activity_info'] = 1
      end

        # The method to get the intent
        # @return An instance of Util::Choice

      def intent
        @intent
      end

        # The method to set the value to intent
        # @param intent [Util::Choice] An instance of Util::Choice

      def intent=(intent)
        if intent!=nil and !intent.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: intent EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @intent = intent
        @key_modified['intent'] = 1
      end

        # The method to get the sentiment_info
        # @return An instance of Util::Choice

      def sentiment_info
        @sentiment_info
      end

        # The method to set the value to sentiment_info
        # @param sentiment_info [Util::Choice] An instance of Util::Choice

      def sentiment_info=(sentiment_info)
        if sentiment_info!=nil and !sentiment_info.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sentiment_info EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @sentiment_info = sentiment_info
        @key_modified['sentiment_info'] = 1
      end

        # The method to get the message_id
        # @return A String value

      def message_id
        @message_id
      end

        # The method to set the value to message_id
        # @param message_id [String] A String

      def message_id=(message_id)
        if message_id!=nil and !message_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: message_id EXPECTED TYPE: String', nil, nil)
        end
        @message_id = message_id
        @key_modified['message_id'] = 1
      end

        # The method to get the source
        # @return A String value

      def source
        @source
      end

        # The method to set the value to source
        # @param source [String] A String

      def source=(source)
        if source!=nil and !source.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source EXPECTED TYPE: String', nil, nil)
        end
        @source = source
        @key_modified['source'] = 1
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

        # The method to get the sent_time
        # @return A String value

      def sent_time
        @sent_time
      end

        # The method to set the value to sent_time
        # @param sent_time [String] A String

      def sent_time=(sent_time)
        if sent_time!=nil and !sent_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sent_time EXPECTED TYPE: String', nil, nil)
        end
        @sent_time = sent_time
        @key_modified['sent_time'] = 1
      end

        # The method to get the emotion
        # @return A String value

      def emotion
        @emotion
      end

        # The method to set the value to emotion
        # @param emotion [String] A String

      def emotion=(emotion)
        if emotion!=nil and !emotion.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: emotion EXPECTED TYPE: String', nil, nil)
        end
        @emotion = emotion
        @key_modified['emotion'] = 1
      end

        # The method to get the from
        # @return An instance of UserDetails

      def from
        @from
      end

        # The method to set the value to from
        # @param from [UserDetails] An instance of UserDetails

      def from=(from)
        if from!=nil and !from.is_a? UserDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: UserDetails', nil, nil)
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

        # The method to get the time
        # @return An instance of DateTime

      def time
        @time
      end

        # The method to set the value to time
        # @param time [DateTime] An instance of DateTime

      def time=(time)
        if time!=nil and !time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time EXPECTED TYPE: DateTime', nil, nil)
        end
        @time = time
        @key_modified['time'] = 1
      end

        # The method to get the status
        # @return An instance of Array

      def status
        @status
      end

        # The method to set the value to status
        # @param status [Array] An instance of Array

      def status=(status)
        if status!=nil and !status.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Array', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
      end

        # The method to get the has_attachment
        # @return A Boolean value

      def has_attachment
        @has_attachment
      end

        # The method to set the value to has_attachment
        # @param has_attachment [Boolean] A Boolean

      def has_attachment=(has_attachment)
        if has_attachment!=nil and ! [true, false].include?has_attachment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: has_attachment EXPECTED TYPE: Boolean', nil, nil)
        end
        @has_attachment = has_attachment
        @key_modified['has_attachment'] = 1
      end

        # The method to get the has_thread_attachment
        # @return A Boolean value

      def has_thread_attachment
        @has_thread_attachment
      end

        # The method to set the value to has_thread_attachment
        # @param has_thread_attachment [Boolean] A Boolean

      def has_thread_attachment=(has_thread_attachment)
        if has_thread_attachment!=nil and ! [true, false].include?has_thread_attachment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: has_thread_attachment EXPECTED TYPE: Boolean', nil, nil)
        end
        @has_thread_attachment = has_thread_attachment
        @key_modified['has_thread_attachment'] = 1
      end

        # The method to get the editable
        # @return A Boolean value

      def editable
        @editable
      end

        # The method to set the value to editable
        # @param editable [Boolean] A Boolean

      def editable=(editable)
        if editable!=nil and ! [true, false].include?editable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editable EXPECTED TYPE: Boolean', nil, nil)
        end
        @editable = editable
        @key_modified['editable'] = 1
      end

        # The method to get the mail_format
        # @return A String value

      def mail_format
        @mail_format
      end

        # The method to set the value to mail_format
        # @param mail_format [String] A String

      def mail_format=(mail_format)
        if mail_format!=nil and !mail_format.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mail_format EXPECTED TYPE: String', nil, nil)
        end
        @mail_format = mail_format
        @key_modified['mail_format'] = 1
      end

        # The method to get the reply_to
        # @return An instance of UserDetails

      def reply_to
        @reply_to
      end

        # The method to set the value to reply_to
        # @param reply_to [UserDetails] An instance of UserDetails

      def reply_to=(reply_to)
        if reply_to!=nil and !reply_to.is_a? UserDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reply_to EXPECTED TYPE: UserDetails', nil, nil)
        end
        @reply_to = reply_to
        @key_modified['reply_to'] = 1
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
