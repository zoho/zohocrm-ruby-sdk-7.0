require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module EmailComposeMeta
    class FeaturesAvailable
      include Util::Model

      # Creates an instance of FeaturesAvailable
      def initialize
        @zsurvey_enabled = nil
        @inline_compose_window = nil
        @schedule_mail = nil
        @email_cloud_picker = nil
        @form_integration_enabled = nil
        @isprivacyenabled = nil
        @auto_suggestion = nil
        @unsubscribe_link = nil
        @best_time_to_contact = nil
        @attach_teamdrive = nil
        @islivedeskenabled = nil
        @subject_line_suggestion = nil
        @email_preference = nil
        @attachment = nil
        @mandateunsublink = nil
        @old_compose_revert = nil
        @key_modified = Hash.new
      end

        # The method to get the zsurvey_enabled
        # @return An instance of Util::Choice

      def zsurvey_enabled
        @zsurvey_enabled
      end

        # The method to set the value to zsurvey_enabled
        # @param zsurvey_enabled [Util::Choice] An instance of Util::Choice

      def zsurvey_enabled=(zsurvey_enabled)
        if zsurvey_enabled!=nil and !zsurvey_enabled.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zsurvey_enabled EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @zsurvey_enabled = zsurvey_enabled
        @key_modified['zsurvey_enabled'] = 1
      end

        # The method to get the inline_compose_window
        # @return An instance of Util::Choice

      def inline_compose_window
        @inline_compose_window
      end

        # The method to set the value to inline_compose_window
        # @param inline_compose_window [Util::Choice] An instance of Util::Choice

      def inline_compose_window=(inline_compose_window)
        if inline_compose_window!=nil and !inline_compose_window.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inline_compose_window EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @inline_compose_window = inline_compose_window
        @key_modified['inline_compose_window'] = 1
      end

        # The method to get the schedule_mail
        # @return An instance of Util::Choice

      def schedule_mail
        @schedule_mail
      end

        # The method to set the value to schedule_mail
        # @param schedule_mail [Util::Choice] An instance of Util::Choice

      def schedule_mail=(schedule_mail)
        if schedule_mail!=nil and !schedule_mail.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: schedule_mail EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @schedule_mail = schedule_mail
        @key_modified['Schedule_Mail'] = 1
      end

        # The method to get the email_cloud_picker
        # @return An instance of Util::Choice

      def email_cloud_picker
        @email_cloud_picker
      end

        # The method to set the value to email_cloud_picker
        # @param email_cloud_picker [Util::Choice] An instance of Util::Choice

      def email_cloud_picker=(email_cloud_picker)
        if email_cloud_picker!=nil and !email_cloud_picker.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_cloud_picker EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @email_cloud_picker = email_cloud_picker
        @key_modified['EMAIL_CLOUD_PICKER'] = 1
      end

        # The method to get the form_integration_enabled
        # @return An instance of Util::Choice

      def form_integration_enabled
        @form_integration_enabled
      end

        # The method to set the value to form_integration_enabled
        # @param form_integration_enabled [Util::Choice] An instance of Util::Choice

      def form_integration_enabled=(form_integration_enabled)
        if form_integration_enabled!=nil and !form_integration_enabled.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: form_integration_enabled EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @form_integration_enabled = form_integration_enabled
        @key_modified['form_integration_enabled'] = 1
      end

        # The method to get the isprivacyenabled
        # @return An instance of Util::Choice

      def isprivacyenabled
        @isprivacyenabled
      end

        # The method to set the value to isprivacyenabled
        # @param isprivacyenabled [Util::Choice] An instance of Util::Choice

      def isprivacyenabled=(isprivacyenabled)
        if isprivacyenabled!=nil and !isprivacyenabled.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: isprivacyenabled EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @isprivacyenabled = isprivacyenabled
        @key_modified['isPrivacyEnabled'] = 1
      end

        # The method to get the auto_suggestion
        # @return An instance of Util::Choice

      def auto_suggestion
        @auto_suggestion
      end

        # The method to set the value to auto_suggestion
        # @param auto_suggestion [Util::Choice] An instance of Util::Choice

      def auto_suggestion=(auto_suggestion)
        if auto_suggestion!=nil and !auto_suggestion.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: auto_suggestion EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @auto_suggestion = auto_suggestion
        @key_modified['auto_suggestion'] = 1
      end

        # The method to get the unsubscribe_link
        # @return An instance of Util::Choice

      def unsubscribe_link
        @unsubscribe_link
      end

        # The method to set the value to unsubscribe_link
        # @param unsubscribe_link [Util::Choice] An instance of Util::Choice

      def unsubscribe_link=(unsubscribe_link)
        if unsubscribe_link!=nil and !unsubscribe_link.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unsubscribe_link EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @unsubscribe_link = unsubscribe_link
        @key_modified['UNSUBSCRIBE_LINK'] = 1
      end

        # The method to get the best_time_to_contact
        # @return An instance of Util::Choice

      def best_time_to_contact
        @best_time_to_contact
      end

        # The method to set the value to best_time_to_contact
        # @param best_time_to_contact [Util::Choice] An instance of Util::Choice

      def best_time_to_contact=(best_time_to_contact)
        if best_time_to_contact!=nil and !best_time_to_contact.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: best_time_to_contact EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @best_time_to_contact = best_time_to_contact
        @key_modified['best_time_to_contact'] = 1
      end

        # The method to get the attach_teamdrive
        # @return An instance of Util::Choice

      def attach_teamdrive
        @attach_teamdrive
      end

        # The method to set the value to attach_teamdrive
        # @param attach_teamdrive [Util::Choice] An instance of Util::Choice

      def attach_teamdrive=(attach_teamdrive)
        if attach_teamdrive!=nil and !attach_teamdrive.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attach_teamdrive EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @attach_teamdrive = attach_teamdrive
        @key_modified['attach_teamdrive'] = 1
      end

        # The method to get the islivedeskenabled
        # @return An instance of Util::Choice

      def islivedeskenabled
        @islivedeskenabled
      end

        # The method to set the value to islivedeskenabled
        # @param islivedeskenabled [Util::Choice] An instance of Util::Choice

      def islivedeskenabled=(islivedeskenabled)
        if islivedeskenabled!=nil and !islivedeskenabled.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: islivedeskenabled EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @islivedeskenabled = islivedeskenabled
        @key_modified['isLiveDeskEnabled'] = 1
      end

        # The method to get the subject_line_suggestion
        # @return A Boolean value

      def subject_line_suggestion
        @subject_line_suggestion
      end

        # The method to set the value to subject_line_suggestion
        # @param subject_line_suggestion [Boolean] A Boolean

      def subject_line_suggestion=(subject_line_suggestion)
        if subject_line_suggestion!=nil and ! [true, false].include?subject_line_suggestion
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subject_line_suggestion EXPECTED TYPE: Boolean', nil, nil)
        end
        @subject_line_suggestion = subject_line_suggestion
        @key_modified['subject_line_suggestion'] = 1
      end

        # The method to get the email_preference
        # @return A Boolean value

      def email_preference
        @email_preference
      end

        # The method to set the value to email_preference
        # @param email_preference [Boolean] A Boolean

      def email_preference=(email_preference)
        if email_preference!=nil and ! [true, false].include?email_preference
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_preference EXPECTED TYPE: Boolean', nil, nil)
        end
        @email_preference = email_preference
        @key_modified['EMAIL_PREFERENCE'] = 1
      end

        # The method to get the attachment
        # @return A Boolean value

      def attachment
        @attachment
      end

        # The method to set the value to attachment
        # @param attachment [Boolean] A Boolean

      def attachment=(attachment)
        if attachment!=nil and ! [true, false].include?attachment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment EXPECTED TYPE: Boolean', nil, nil)
        end
        @attachment = attachment
        @key_modified['ATTACHMENT'] = 1
      end

        # The method to get the mandateunsublink
        # @return A Boolean value

      def mandateunsublink
        @mandateunsublink
      end

        # The method to set the value to mandateunsublink
        # @param mandateunsublink [Boolean] A Boolean

      def mandateunsublink=(mandateunsublink)
        if mandateunsublink!=nil and ! [true, false].include?mandateunsublink
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mandateunsublink EXPECTED TYPE: Boolean', nil, nil)
        end
        @mandateunsublink = mandateunsublink
        @key_modified['mandateUnsubLink'] = 1
      end

        # The method to get the old_compose_revert
        # @return A Boolean value

      def old_compose_revert
        @old_compose_revert
      end

        # The method to set the value to old_compose_revert
        # @param old_compose_revert [Boolean] A Boolean

      def old_compose_revert=(old_compose_revert)
        if old_compose_revert!=nil and ! [true, false].include?old_compose_revert
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: old_compose_revert EXPECTED TYPE: Boolean', nil, nil)
        end
        @old_compose_revert = old_compose_revert
        @key_modified['OLD_COMPOSE_REVERT'] = 1
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
