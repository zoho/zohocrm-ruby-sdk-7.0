require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module UserTypeUsers
    class UserTypeUsersOperations

        # Creates an instance of UserTypeUsersOperations with the given parameters
        # @param user_type_id [Integer] A Integer
        # @param portal_name [String] A String
      def initialize(user_type_id, portal_name)
        if !user_type_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !portal_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: portal_name EXPECTED TYPE: String', nil, nil)
        end
        @user_type_id = user_type_id
        @portal_name = portal_name
      end

        # The method to get users of user type
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_users_of_user_type(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal_name.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + @user_type_id.to_s
        api_path = api_path + '/users'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to delete user from the portal
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_user_from_the_portal(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal_name.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + @user_type_id.to_s
        api_path = api_path + '/users'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to transfer users of a user type
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def transfer_users_of_a_user_type(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal_name.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + @user_type_id.to_s
        api_path = api_path + '/users/action/transfer'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.mandatory_checker = true
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to change users status
        # @param user_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def change_users_status(user_id, param_instance=nil)
        if !user_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal_name.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + @user_type_id.to_s
        api_path = api_path + '/users/'
        api_path = api_path + user_id.to_s
        api_path = api_path + '/actions/change_status'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.mandatory_checker = true
        handler_instance.param = param_instance
        require_relative 'status_action_handler'
        handler_instance.api_call(StatusActionHandler.name, 'application/json')
      end

      class GetUsersOfUserTypeParam
          @@filter =   Param.new('filter', 'com.zoho.crm.api.UserTypeUsers.GetUsersOfUserTypeParam')
        def self.filter
          @@filter
        end
          @@type =   Param.new('type', 'com.zoho.crm.api.UserTypeUsers.GetUsersOfUserTypeParam')
        def self.type
          @@type
        end
      end

      class DeleteUserFromThePortalParam
          @@personality_ids =   Param.new('personality_ids', 'com.zoho.crm.api.UserTypeUsers.DeleteUserFromThePortalParam')
        def self.personality_ids
          @@personality_ids
        end
      end

      class TransferUsersOfAUserTypeParam
          @@personality_ids =   Param.new('personality_ids', 'com.zoho.crm.api.UserTypeUsers.TransferUsersOfAUserTypeParam')
        def self.personality_ids
          @@personality_ids
        end
          @@transfer_to =   Param.new('transfer_To', 'com.zoho.crm.api.UserTypeUsers.TransferUsersOfAUserTypeParam')
        def self.transfer_to
          @@transfer_to
        end
      end

      class ChangeUsersStatusParam
          @@active =   Param.new('active', 'com.zoho.crm.api.UserTypeUsers.ChangeUsersStatusParam')
        def self.active
          @@active
        end
      end

    end
  end
end
