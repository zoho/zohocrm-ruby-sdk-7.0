require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module UserGroups
    class UserGroupsOperations

      # Creates an instance of UserGroupsOperations
      def initialize
      end

        # The method to get groups
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_groups(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create groups
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_groups(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update groups
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_groups(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get group
        # @param group [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_group(group)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update group
        # @param group [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_group(group, request)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete group
        # @param group [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_group(group)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get sources
        # @param group [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_sources(group, param_instance=nil)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        api_path = api_path + '/sources'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'ACTION'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get sources count
        # @param group [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_sources_count(group)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        api_path = api_path + '/actions/sources_count'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'ACTION'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get associations
        # @param group [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_associations(group)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        api_path = api_path + '/actions/associations'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'ACTION'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get associated users count
        # @return An instance of APIResponse
      # @raise SDKException
      def get_associated_users_count
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/actions/associated_users_count'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'ACTION'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get grouped counts
        # @param group [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_grouped_counts(group, param_instance=nil)
        if !group.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: group EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/user_groups/'
        api_path = api_path + group.to_s
        api_path = api_path + '/associated_users/actions/grouped_counts'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'ACTION'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetGroupsParam
          @@include =   Param.new('include', 'com.zoho.crm.api.UserGroups.GetGroupsParam')
        def self.include
          @@include
        end
          @@name =   Param.new('name', 'com.zoho.crm.api.UserGroups.GetGroupsParam')
        def self.name
          @@name
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.UserGroups.GetGroupsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.UserGroups.GetGroupsParam')
        def self.per_page
          @@per_page
        end
          @@filters =   Param.new('filters', 'com.zoho.crm.api.UserGroups.GetGroupsParam')
        def self.filters
          @@filters
        end
      end

      class GetSourcesParam
          @@type =   Param.new('type', 'com.zoho.crm.api.UserGroups.GetSourcesParam')
        def self.type
          @@type
        end
          @@user_type =   Param.new('user_type', 'com.zoho.crm.api.UserGroups.GetSourcesParam')
        def self.user_type
          @@user_type
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.UserGroups.GetSourcesParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.UserGroups.GetSourcesParam')
        def self.per_page
          @@per_page
        end
      end

      class GetGroupedCountsParam
          @@group_by =   Param.new('group_by', 'com.zoho.crm.api.UserGroups.GetGroupedCountsParam')
        def self.group_by
          @@group_by
        end
      end

    end
  end
end
