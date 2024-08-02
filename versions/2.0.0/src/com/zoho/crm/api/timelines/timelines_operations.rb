require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/choice'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Timelines
    class TimelinesOperations

      # Creates an instance of TimelinesOperations
      def initialize
      end

        # The method to get timelines
        # @param module_1 [String] A String
        # @param record_id [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_timelines(module_1, record_id, param_instance=nil)
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if !record_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/__timeline'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetTimelinesParam
          @@include_inner_details =   Param.new('include_inner_details', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.include_inner_details
          @@include_inner_details
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.sort_by
          @@sort_by
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.sort_order
          @@sort_order
        end
          @@include_timeline_type =   Param.new('include_timeline_type', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.include_timeline_type
          @@include_timeline_type
        end
          @@include =   Param.new('include', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.include
          @@include
        end
          @@filters =   Param.new('filters', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.filters
          @@filters
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.per_page
          @@per_page
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.page
          @@page
        end
          @@page_token =   Param.new('page_token', 'com.zoho.crm.api.Timelines.GetTimelinesParam')
        def self.page_token
          @@page_token
        end
      end

    end
  end
end
