require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/choice'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class ZiaPeopleEnrichmentOperations

      # Creates an instance of ZiaPeopleEnrichmentOperations
      def initialize
      end

        # The method to get zia people enrichments
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_zia_people_enrichments(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__zia_people_enrichment'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get zia people enrichment
        # @param zia_people_enrichment_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_zia_people_enrichment(zia_people_enrichment_id)
        if !zia_people_enrichment_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_people_enrichment_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__zia_people_enrichment/'
        api_path = api_path + zia_people_enrichment_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create zia people enrichment
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def create_zia_people_enrichment(request, param_instance=nil)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__zia_people_enrichment'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetZiaPeopleEnrichmentsParam
          @@status =   Param.new('status', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.status
          @@status
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.sort_order
          @@sort_order
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.sort_by
          @@sort_by
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.per_page
          @@per_page
        end
          @@count =   Param.new('count', 'com.zoho.crm.api.ZiaPeopleEnrichment.GetZiaPeopleEnrichmentsParam')
        def self.count
          @@count
        end
      end

      class CreateZiaPeopleEnrichmentParam
          @@module_1 =   Param.new('module', 'com.zoho.crm.api.ZiaPeopleEnrichment.CreateZiaPeopleEnrichmentParam')
        def self.module_1
          @@module_1
        end
          @@record_id =   Param.new('record_id', 'com.zoho.crm.api.ZiaPeopleEnrichment.CreateZiaPeopleEnrichmentParam')
        def self.record_id
          @@record_id
        end
      end

    end
  end
end
