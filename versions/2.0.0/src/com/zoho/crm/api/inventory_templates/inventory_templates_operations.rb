require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module InventoryTemplates
    class InventoryTemplatesOperations

      # Creates an instance of InventoryTemplatesOperations
      def initialize
      end

        # The method to get inventory templates
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_inventory_templates(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/inventory_templates'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get inventory template
        # @param template [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_inventory_template(template)
        if !template.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: template EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/inventory_templates/'
        api_path = api_path + template.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetInventoryTemplatesParam
          @@module_1 =   Param.new('module', 'com.zoho.crm.api.InventoryTemplates.GetInventoryTemplatesParam')
        def self.module_1
          @@module_1
        end
          @@category =   Param.new('category', 'com.zoho.crm.api.InventoryTemplates.GetInventoryTemplatesParam')
        def self.category
          @@category
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.InventoryTemplates.GetInventoryTemplatesParam')
        def self.sort_by
          @@sort_by
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.InventoryTemplates.GetInventoryTemplatesParam')
        def self.sort_order
          @@sort_order
        end
      end

    end
  end
end
