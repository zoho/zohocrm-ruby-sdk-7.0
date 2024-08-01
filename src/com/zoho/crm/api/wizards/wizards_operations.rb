require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Wizards
    class WizardsOperations

      # Creates an instance of WizardsOperations
      def initialize
      end

        # The method to get wizards
        # @return An instance of APIResponse
      # @raise SDKException
      def get_wizards
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/wizards'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get wizard by id
        # @param wizard_id [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_wizard_by_id(wizard_id, param_instance=nil)
        if !wizard_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: wizard_id EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/wizards/'
        api_path = api_path + wizard_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetWizardByIDParam
          @@layout_id =   Param.new('layout_id', 'com.zoho.crm.api.Wizards.GetWizardByIDParam')
        def self.layout_id
          @@layout_id
        end
      end

    end
  end
end
