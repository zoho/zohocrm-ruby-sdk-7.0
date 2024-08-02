require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/choice'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module PortalInvite
    class PortalInviteOperations

        # Creates an instance of PortalInviteOperations with the given parameters
        # @param module_1 [String] A String
      def initialize(module_1)
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @module_1 = module_1
      end

        # The method to invite users
        # @param record [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def invite_users(record, param_instance=nil)
        if !record.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record.to_s
        api_path = api_path + '/actions/portal_invite'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class InviteUsersParam
          @@user_type_id =   Param.new('user_type_id', 'com.zoho.crm.api.PortalInvite.InviteUsersParam')
        def self.user_type_id
          @@user_type_id
        end
          @@type =   Param.new('type', 'com.zoho.crm.api.PortalInvite.InviteUsersParam')
        def self.type
          @@type
        end
          @@language =   Param.new('language', 'com.zoho.crm.api.PortalInvite.InviteUsersParam')
        def self.language
          @@language
        end
      end

    end
  end
end
