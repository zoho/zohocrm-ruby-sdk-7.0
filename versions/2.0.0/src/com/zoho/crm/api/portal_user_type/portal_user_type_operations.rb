require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module PortalUserType
    class PortalUserTypeOperations

        # Creates an instance of PortalUserTypeOperations with the given parameters
        # @param portal [String] A String
      def initialize(portal)
        if !portal.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: portal EXPECTED TYPE: String', nil, nil)
        end
        @portal = portal
      end

        # The method to get user types
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_user_types(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal.to_s
        api_path = api_path + '/user_type'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create user type
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_user_type(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal.to_s
        api_path = api_path + '/user_type'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get user type
        # @param user_type_id [String] A String
        # @return An instance of APIResponse
      # @raise SDKException
      def get_user_type(user_type_id)
        if !user_type_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type_id EXPECTED TYPE: String', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + user_type_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update user type
        # @param user_type_id [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_user_type(user_type_id, request)
        if !user_type_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type_id EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + user_type_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete user type
        # @param user_type_id [String] A String
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_user_type(user_type_id)
        if !user_type_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type_id EXPECTED TYPE: String', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/portals/'
        api_path = api_path + @portal.to_s
        api_path = api_path + '/user_type/'
        api_path = api_path + user_type_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetUserTypesParam
          @@include =   Param.new('include', 'com.zoho.crm.api.PortalUserType.GetUserTypesParam')
        def self.include
          @@include
        end
      end

    end
  end
end
