require_relative '../users/minified_user'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Territories
    class Territories
      include Util::Model

      # Creates an instance of Territories
      def initialize
        @created_time = nil
        @modified_time = nil
        @manager = nil
        @reporting_to = nil
        @permission_type = nil
        @modified_by = nil
        @description = nil
        @id = nil
        @created_by = nil
        @account_rule_criteria = nil
        @deal_rule_criteria = nil
        @lead_rule_criteria = nil
        @name = nil
        @api_name = nil
        @key_modified = Hash.new
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

        # The method to get the manager
        # @return An instance of Manager

      def manager
        @manager
      end

        # The method to set the value to manager
        # @param manager [Manager] An instance of Manager

      def manager=(manager)
        if manager!=nil and !manager.is_a? Manager
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: manager EXPECTED TYPE: Manager', nil, nil)
        end
        @manager = manager
        @key_modified['manager'] = 1
      end

        # The method to get the reporting_to
        # @return An instance of ReportingTo

      def reporting_to
        @reporting_to
      end

        # The method to set the value to reporting_to
        # @param reporting_to [ReportingTo] An instance of ReportingTo

      def reporting_to=(reporting_to)
        if reporting_to!=nil and !reporting_to.is_a? ReportingTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reporting_to EXPECTED TYPE: ReportingTo', nil, nil)
        end
        @reporting_to = reporting_to
        @key_modified['reporting_to'] = 1
      end

        # The method to get the permission_type
        # @return An instance of Util::Choice

      def permission_type
        @permission_type
      end

        # The method to set the value to permission_type
        # @param permission_type [Util::Choice] An instance of Util::Choice

      def permission_type=(permission_type)
        if permission_type!=nil and !permission_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: permission_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @permission_type = permission_type
        @key_modified['permission_type'] = 1
      end

        # The method to get the modified_by
        # @return An instance of Users::MinifiedUser

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
      end

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the created_by
        # @return An instance of Users::MinifiedUser

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the account_rule_criteria
        # @return An instance of Criteria

      def account_rule_criteria
        @account_rule_criteria
      end

        # The method to set the value to account_rule_criteria
        # @param account_rule_criteria [Criteria] An instance of Criteria

      def account_rule_criteria=(account_rule_criteria)
        if account_rule_criteria!=nil and !account_rule_criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: account_rule_criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @account_rule_criteria = account_rule_criteria
        @key_modified['account_rule_criteria'] = 1
      end

        # The method to get the deal_rule_criteria
        # @return An instance of Criteria

      def deal_rule_criteria
        @deal_rule_criteria
      end

        # The method to set the value to deal_rule_criteria
        # @param deal_rule_criteria [Criteria] An instance of Criteria

      def deal_rule_criteria=(deal_rule_criteria)
        if deal_rule_criteria!=nil and !deal_rule_criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal_rule_criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @deal_rule_criteria = deal_rule_criteria
        @key_modified['deal_rule_criteria'] = 1
      end

        # The method to get the lead_rule_criteria
        # @return An instance of Criteria

      def lead_rule_criteria
        @lead_rule_criteria
      end

        # The method to set the value to lead_rule_criteria
        # @param lead_rule_criteria [Criteria] An instance of Criteria

      def lead_rule_criteria=(lead_rule_criteria)
        if lead_rule_criteria!=nil and !lead_rule_criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lead_rule_criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @lead_rule_criteria = lead_rule_criteria
        @key_modified['lead_rule_criteria'] = 1
      end

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
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
