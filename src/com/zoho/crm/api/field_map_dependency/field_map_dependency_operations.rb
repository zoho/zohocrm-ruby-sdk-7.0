require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module FieldMapDependency
    class FieldMapDependencyOperations

        # Creates an instance of FieldMapDependencyOperations with the given parameters
        # @param layout_id [Integer] A Integer
        # @param module_1 [String] A String
      def initialize(layout_id, module_1=nil)
        if !layout_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout_id EXPECTED TYPE: Integer', nil, nil)
        end
        if module_1!=nil and !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @layout_id = layout_id
        @module_1 = module_1
      end

        # The method to create map dependency
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_map_dependency(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/layouts/'
        api_path = api_path + @layout_id.to_s
        api_path = api_path + '/map_dependency'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.FieldMapDependency.CreateMapDependencyParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get map dependencies
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_map_dependencies(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/layouts/'
        api_path = api_path + @layout_id.to_s
        api_path = api_path + '/map_dependency'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.FieldMapDependency.GetMapDependenciesParam'), @module_1)
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update map dependency
        # @param dependency_id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_map_dependency(dependency_id, request)
        if !dependency_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: dependency_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/layouts/'
        api_path = api_path + @layout_id.to_s
        api_path = api_path + '/map_dependency/'
        api_path = api_path + dependency_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.FieldMapDependency.UpdateMapDependencyParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get map dependency
        # @param dependency_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_map_dependency(dependency_id)
        if !dependency_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: dependency_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/layouts/'
        api_path = api_path + @layout_id.to_s
        api_path = api_path + '/map_dependency/'
        api_path = api_path + dependency_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.FieldMapDependency.GetMapDependencyParam'), @module_1)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to delete map dependency
        # @param dependency_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_map_dependency(dependency_id)
        if !dependency_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: dependency_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/layouts/'
        api_path = api_path + @layout_id.to_s
        api_path = api_path + '/map_dependency/'
        api_path = api_path + dependency_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.FieldMapDependency.DeleteMapDependencyParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class CreateMapDependencyParam
      end

      class CreateMapDependencyHeader
      end

      class GetMapDependenciesParam
          @@page =   Param.new('page', 'com.zoho.crm.api.FieldMapDependency.GetMapDependenciesParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.FieldMapDependency.GetMapDependenciesParam')
        def self.per_page
          @@per_page
        end
          @@filters =   Param.new('filters', 'com.zoho.crm.api.FieldMapDependency.GetMapDependenciesParam')
        def self.filters
          @@filters
        end
      end

      class UpdateMapDependencyParam
      end

      class GetMapDependencyParam
      end

      class DeleteMapDependencyParam
      end

    end
  end
end
