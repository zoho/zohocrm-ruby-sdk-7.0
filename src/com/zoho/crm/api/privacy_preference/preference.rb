require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyPreference
    class Preference
      include Util::Model

      # Creates an instance of Preference
      def initialize
        @consent_modules = nil
        @restrict_tpt_fields = nil
        @exclude_api_zoho = nil
        @awaiting_period = nil
        @consent_mail_send = nil
        @exclude_export_fields = nil
        @limit_actions = nil
        @exclude_export = nil
        @restrict_zoho_integ = nil
        @exclude_api_zoho_fields = nil
        @duration_timing = nil
        @data_processing_duration = nil
        @restrict_tpt_services = nil
        @exclude_api_tpt_fields = nil
        @restrict_zoho_integ_services = nil
        @privacy_setting_status = nil
        @double_opt_in = nil
        @restrict_zoho_integ_fields = nil
        @exclude_api_tpt = nil
        @block_list = nil
        @restrict_tpt = nil
        @actions_while_awaiting = nil
        @key_modified = Hash.new
      end

        # The method to get the consent_modules
        # @return A String value

      def consent_modules
        @consent_modules
      end

        # The method to set the value to consent_modules
        # @param consent_modules [String] A String

      def consent_modules=(consent_modules)
        if consent_modules!=nil and !consent_modules.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_modules EXPECTED TYPE: String', nil, nil)
        end
        @consent_modules = consent_modules
        @key_modified['consent_modules'] = 1
      end

        # The method to get the restrict_tpt_fields
        # @return A String value

      def restrict_tpt_fields
        @restrict_tpt_fields
      end

        # The method to set the value to restrict_tpt_fields
        # @param restrict_tpt_fields [String] A String

      def restrict_tpt_fields=(restrict_tpt_fields)
        if restrict_tpt_fields!=nil and !restrict_tpt_fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_tpt_fields EXPECTED TYPE: String', nil, nil)
        end
        @restrict_tpt_fields = restrict_tpt_fields
        @key_modified['restrict_tpt_fields'] = 1
      end

        # The method to get the exclude_api_zoho
        # @return A String value

      def exclude_api_zoho
        @exclude_api_zoho
      end

        # The method to set the value to exclude_api_zoho
        # @param exclude_api_zoho [String] A String

      def exclude_api_zoho=(exclude_api_zoho)
        if exclude_api_zoho!=nil and !exclude_api_zoho.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_api_zoho EXPECTED TYPE: String', nil, nil)
        end
        @exclude_api_zoho = exclude_api_zoho
        @key_modified['exclude_api_zoho'] = 1
      end

        # The method to get the awaiting_period
        # @return A String value

      def awaiting_period
        @awaiting_period
      end

        # The method to set the value to awaiting_period
        # @param awaiting_period [String] A String

      def awaiting_period=(awaiting_period)
        if awaiting_period!=nil and !awaiting_period.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: awaiting_period EXPECTED TYPE: String', nil, nil)
        end
        @awaiting_period = awaiting_period
        @key_modified['awaiting_period'] = 1
      end

        # The method to get the consent_mail_send
        # @return A String value

      def consent_mail_send
        @consent_mail_send
      end

        # The method to set the value to consent_mail_send
        # @param consent_mail_send [String] A String

      def consent_mail_send=(consent_mail_send)
        if consent_mail_send!=nil and !consent_mail_send.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_mail_send EXPECTED TYPE: String', nil, nil)
        end
        @consent_mail_send = consent_mail_send
        @key_modified['consent_mail_send'] = 1
      end

        # The method to get the exclude_export_fields
        # @return A String value

      def exclude_export_fields
        @exclude_export_fields
      end

        # The method to set the value to exclude_export_fields
        # @param exclude_export_fields [String] A String

      def exclude_export_fields=(exclude_export_fields)
        if exclude_export_fields!=nil and !exclude_export_fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_export_fields EXPECTED TYPE: String', nil, nil)
        end
        @exclude_export_fields = exclude_export_fields
        @key_modified['exclude_export_fields'] = 1
      end

        # The method to get the limit_actions
        # @return A String value

      def limit_actions
        @limit_actions
      end

        # The method to set the value to limit_actions
        # @param limit_actions [String] A String

      def limit_actions=(limit_actions)
        if limit_actions!=nil and !limit_actions.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: limit_actions EXPECTED TYPE: String', nil, nil)
        end
        @limit_actions = limit_actions
        @key_modified['limit_actions'] = 1
      end

        # The method to get the exclude_export
        # @return A String value

      def exclude_export
        @exclude_export
      end

        # The method to set the value to exclude_export
        # @param exclude_export [String] A String

      def exclude_export=(exclude_export)
        if exclude_export!=nil and !exclude_export.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_export EXPECTED TYPE: String', nil, nil)
        end
        @exclude_export = exclude_export
        @key_modified['exclude_export'] = 1
      end

        # The method to get the restrict_zoho_integ
        # @return A String value

      def restrict_zoho_integ
        @restrict_zoho_integ
      end

        # The method to set the value to restrict_zoho_integ
        # @param restrict_zoho_integ [String] A String

      def restrict_zoho_integ=(restrict_zoho_integ)
        if restrict_zoho_integ!=nil and !restrict_zoho_integ.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_zoho_integ EXPECTED TYPE: String', nil, nil)
        end
        @restrict_zoho_integ = restrict_zoho_integ
        @key_modified['restrict_zoho_integ'] = 1
      end

        # The method to get the exclude_api_zoho_fields
        # @return A String value

      def exclude_api_zoho_fields
        @exclude_api_zoho_fields
      end

        # The method to set the value to exclude_api_zoho_fields
        # @param exclude_api_zoho_fields [String] A String

      def exclude_api_zoho_fields=(exclude_api_zoho_fields)
        if exclude_api_zoho_fields!=nil and !exclude_api_zoho_fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_api_zoho_fields EXPECTED TYPE: String', nil, nil)
        end
        @exclude_api_zoho_fields = exclude_api_zoho_fields
        @key_modified['exclude_api_zoho_fields'] = 1
      end

        # The method to get the duration_timing
        # @return A String value

      def duration_timing
        @duration_timing
      end

        # The method to set the value to duration_timing
        # @param duration_timing [String] A String

      def duration_timing=(duration_timing)
        if duration_timing!=nil and !duration_timing.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: duration_timing EXPECTED TYPE: String', nil, nil)
        end
        @duration_timing = duration_timing
        @key_modified['duration_timing'] = 1
      end

        # The method to get the data_processing_duration
        # @return A String value

      def data_processing_duration
        @data_processing_duration
      end

        # The method to set the value to data_processing_duration
        # @param data_processing_duration [String] A String

      def data_processing_duration=(data_processing_duration)
        if data_processing_duration!=nil and !data_processing_duration.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_processing_duration EXPECTED TYPE: String', nil, nil)
        end
        @data_processing_duration = data_processing_duration
        @key_modified['data_processing_duration'] = 1
      end

        # The method to get the restrict_tpt_services
        # @return A String value

      def restrict_tpt_services
        @restrict_tpt_services
      end

        # The method to set the value to restrict_tpt_services
        # @param restrict_tpt_services [String] A String

      def restrict_tpt_services=(restrict_tpt_services)
        if restrict_tpt_services!=nil and !restrict_tpt_services.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_tpt_services EXPECTED TYPE: String', nil, nil)
        end
        @restrict_tpt_services = restrict_tpt_services
        @key_modified['restrict_tpt_services'] = 1
      end

        # The method to get the exclude_api_tpt_fields
        # @return A String value

      def exclude_api_tpt_fields
        @exclude_api_tpt_fields
      end

        # The method to set the value to exclude_api_tpt_fields
        # @param exclude_api_tpt_fields [String] A String

      def exclude_api_tpt_fields=(exclude_api_tpt_fields)
        if exclude_api_tpt_fields!=nil and !exclude_api_tpt_fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_api_tpt_fields EXPECTED TYPE: String', nil, nil)
        end
        @exclude_api_tpt_fields = exclude_api_tpt_fields
        @key_modified['exclude_api_tpt_fields'] = 1
      end

        # The method to get the restrict_zoho_integ_services
        # @return A String value

      def restrict_zoho_integ_services
        @restrict_zoho_integ_services
      end

        # The method to set the value to restrict_zoho_integ_services
        # @param restrict_zoho_integ_services [String] A String

      def restrict_zoho_integ_services=(restrict_zoho_integ_services)
        if restrict_zoho_integ_services!=nil and !restrict_zoho_integ_services.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_zoho_integ_services EXPECTED TYPE: String', nil, nil)
        end
        @restrict_zoho_integ_services = restrict_zoho_integ_services
        @key_modified['restrict_zoho_integ_services'] = 1
      end

        # The method to get the privacy_setting_status
        # @return A String value

      def privacy_setting_status
        @privacy_setting_status
      end

        # The method to set the value to privacy_setting_status
        # @param privacy_setting_status [String] A String

      def privacy_setting_status=(privacy_setting_status)
        if privacy_setting_status!=nil and !privacy_setting_status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: privacy_setting_status EXPECTED TYPE: String', nil, nil)
        end
        @privacy_setting_status = privacy_setting_status
        @key_modified['privacy_setting_status'] = 1
      end

        # The method to get the double_opt_in
        # @return A String value

      def double_opt_in
        @double_opt_in
      end

        # The method to set the value to double_opt_in
        # @param double_opt_in [String] A String

      def double_opt_in=(double_opt_in)
        if double_opt_in!=nil and !double_opt_in.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: double_opt_in EXPECTED TYPE: String', nil, nil)
        end
        @double_opt_in = double_opt_in
        @key_modified['double_opt_in'] = 1
      end

        # The method to get the restrict_zoho_integ_fields
        # @return A String value

      def restrict_zoho_integ_fields
        @restrict_zoho_integ_fields
      end

        # The method to set the value to restrict_zoho_integ_fields
        # @param restrict_zoho_integ_fields [String] A String

      def restrict_zoho_integ_fields=(restrict_zoho_integ_fields)
        if restrict_zoho_integ_fields!=nil and !restrict_zoho_integ_fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_zoho_integ_fields EXPECTED TYPE: String', nil, nil)
        end
        @restrict_zoho_integ_fields = restrict_zoho_integ_fields
        @key_modified['restrict_zoho_integ_fields'] = 1
      end

        # The method to get the exclude_api_tpt
        # @return A String value

      def exclude_api_tpt
        @exclude_api_tpt
      end

        # The method to set the value to exclude_api_tpt
        # @param exclude_api_tpt [String] A String

      def exclude_api_tpt=(exclude_api_tpt)
        if exclude_api_tpt!=nil and !exclude_api_tpt.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exclude_api_tpt EXPECTED TYPE: String', nil, nil)
        end
        @exclude_api_tpt = exclude_api_tpt
        @key_modified['exclude_api_tpt'] = 1
      end

        # The method to get the block_list
        # @return A String value

      def block_list
        @block_list
      end

        # The method to set the value to block_list
        # @param block_list [String] A String

      def block_list=(block_list)
        if block_list!=nil and !block_list.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: block_list EXPECTED TYPE: String', nil, nil)
        end
        @block_list = block_list
        @key_modified['block_list'] = 1
      end

        # The method to get the restrict_tpt
        # @return A String value

      def restrict_tpt
        @restrict_tpt
      end

        # The method to set the value to restrict_tpt
        # @param restrict_tpt [String] A String

      def restrict_tpt=(restrict_tpt)
        if restrict_tpt!=nil and !restrict_tpt.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restrict_tpt EXPECTED TYPE: String', nil, nil)
        end
        @restrict_tpt = restrict_tpt
        @key_modified['restrict_tpt'] = 1
      end

        # The method to get the actions_while_awaiting
        # @return A String value

      def actions_while_awaiting
        @actions_while_awaiting
      end

        # The method to set the value to actions_while_awaiting
        # @param actions_while_awaiting [String] A String

      def actions_while_awaiting=(actions_while_awaiting)
        if actions_while_awaiting!=nil and !actions_while_awaiting.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actions_while_awaiting EXPECTED TYPE: String', nil, nil)
        end
        @actions_while_awaiting = actions_while_awaiting
        @key_modified['actions_while_awaiting'] = 1
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
