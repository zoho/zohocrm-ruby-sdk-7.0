require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Features
    class FeaturesOperations

      # Creates an instance of FeaturesOperations
      def initialize
      end

        # The method to get feature details
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_feature_details(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__features'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get feature detail
        # @param feature_api_name [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_feature_detail(feature_api_name, param_instance=nil)
        if !feature_api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feature_api_name EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__features/'
        api_path = api_path + feature_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get data enrichment
        # @return An instance of APIResponse
      # @raise SDKException
      def get_data_enrichment
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__features/data_enrichment'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get user licences count
        # @return An instance of APIResponse
      # @raise SDKException
      def get_user_licences_count
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__features/user_licenses'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetFeatureDetailsParam
          @@module_1 =   Param.new('module', 'com.zoho.crm.api.Features.GetFeatureDetailsParam')
        def self.module_1
          @@module_1
        end
          @@api_names =   Param.new('api_names', 'com.zoho.crm.api.Features.GetFeatureDetailsParam')
        def self.api_names
          @@api_names
        end
      end

      class GetFeatureDetailParam
          @@module_1 =   Param.new('module', 'com.zoho.crm.api.Features.GetFeatureDetailParam')
        def self.module_1
          @@module_1
        end
      end

    end
  end
end
