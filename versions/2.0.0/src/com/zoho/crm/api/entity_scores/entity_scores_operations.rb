require_relative '../header'
require_relative '../header_map'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module EntityScores
    class EntityScoresOperations

        # Creates an instance of EntityScoresOperations with the given parameters
        # @param fields [String] A String
        # @param cvid [String] A String
      def initialize(fields=nil, cvid=nil)
        if fields!=nil and !fields.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: String', nil, nil)
        end
        if cvid!=nil and !cvid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cvid EXPECTED TYPE: String', nil, nil)
        end
        @fields = fields
        @cvid = cvid
      end

        # The method to get entity score
        # @param record_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_entity_score(record_id)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Entity_Scores__s/'
        api_path = api_path + record_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('fields', 'com.zoho.crm.api.EntityScores.GetEntityScoreParam'), @fields)
        handler_instance.add_param(Param.new('cvid', 'com.zoho.crm.api.EntityScores.GetEntityScoreParam'), @cvid)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get entity scores
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_entity_scores(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Entity_Scores__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('fields', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam'), @fields)
        handler_instance.add_param(Param.new('cvid', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam'), @cvid)
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetEntityScoreParam
      end

      class GetEntityScoresParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.ids
          @@ids
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.sort_by
          @@sort_by
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.sort_order
          @@sort_order
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.per_page
          @@per_page
        end
          @@page_token =   Param.new('page_token', 'com.zoho.crm.api.EntityScores.GetEntityScoresParam')
        def self.page_token
          @@page_token
        end
      end

      class GetEntityScoresHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.EntityScores.GetEntityScoresHeader')
        def self.If_modified_since
          @@If_modified_since
        end
      end

    end
  end
end
