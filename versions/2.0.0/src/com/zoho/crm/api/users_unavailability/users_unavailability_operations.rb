require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module UsersUnavailability
    class UsersUnavailabilityOperations

      # Creates an instance of UsersUnavailabilityOperations
      def initialize
      end

        # The method to create users unavailability
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_users_unavailability(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update users unavailability
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_users_unavailability(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get users unavailability
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_users_unavailability(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update user unavailability
        # @param id [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_user_unavailability(id, request)
        if !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get user unavailability
        # @param id [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_user_unavailability(id, param_instance=nil)
        if !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to delete user unavailability
        # @param id [String] A String
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_user_unavailability(id)
        if !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/users_unavailability/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = 'READ'
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetUsersUnavailabilityParam
          @@include_inner_details =   Param.new('include_inner_details', 'com.zoho.crm.api.UsersUnavailability.GetUsersUnavailabilityParam')
        def self.include_inner_details
          @@include_inner_details
        end
          @@group_ids =   Param.new('group_ids', 'com.zoho.crm.api.UsersUnavailability.GetUsersUnavailabilityParam')
        def self.group_ids
          @@group_ids
        end
          @@role_ids =   Param.new('role_ids', 'com.zoho.crm.api.UsersUnavailability.GetUsersUnavailabilityParam')
        def self.role_ids
          @@role_ids
        end
          @@territory_ids =   Param.new('territory_ids', 'com.zoho.crm.api.UsersUnavailability.GetUsersUnavailabilityParam')
        def self.territory_ids
          @@territory_ids
        end
          @@filters =   Param.new('filters', 'com.zoho.crm.api.UsersUnavailability.GetUsersUnavailabilityParam')
        def self.filters
          @@filters
        end
      end

      class GetUserUnavailabilityParam
          @@include_inner_details =   Param.new('include_inner_details', 'com.zoho.crm.api.UsersUnavailability.GetUserUnavailabilityParam')
        def self.include_inner_details
          @@include_inner_details
        end
          @@filters =   Param.new('filters', 'com.zoho.crm.api.UsersUnavailability.GetUserUnavailabilityParam')
        def self.filters
          @@filters
        end
      end

    end
  end
end
