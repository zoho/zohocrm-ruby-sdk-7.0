require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Pipeline
    class PipelineOperations

        # Creates an instance of PipelineOperations with the given parameters
        # @param layout_id [Integer] A Integer
      def initialize(layout_id=nil)
        if layout_id!=nil and !layout_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout_id EXPECTED TYPE: Integer', nil, nil)
        end
        @layout_id = layout_id
      end

        # The method to get pipelines
        # @return An instance of APIResponse
      # @raise SDKException
      def get_pipelines
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.GetPipelinesParam'), @layout_id)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create pipeline
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_pipeline(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.CreatePipelineParam'), @layout_id)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update pipelines
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_pipelines(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.UpdatePipelinesParam'), @layout_id)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get pipeline
        # @param id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_pipeline(id)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.GetPipelineParam'), @layout_id)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update pipeline
        # @param id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_pipeline(id, request)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PATCH
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.UpdatePipelineParam'), @layout_id)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete pipeline
        # @param id [Integer] A Integer
        # @param request [DPipelineWrapper] An instance of DPipelineWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_pipeline(id, request)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? DPipelineWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: DPipelineWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PATCH
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.DeletePipelineParam'), @layout_id)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to transfer pipelines
        # @param request [TransferPipelineWrapper] An instance of TransferPipelineWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def transfer_pipelines(request)
        if request!=nil and !request.is_a? TransferPipelineWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: TransferPipelineWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/pipeline/actions/transfer'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.add_param(Param.new('layout_id', 'com.zoho.crm.api.Pipeline.TransferPipelinesParam'), @layout_id)
        require_relative 'transfer_pipeline_action_handler'
        handler_instance.api_call(TransferPipelineActionHandler.name, 'application/json')
      end

      class GetPipelinesParam
      end

      class CreatePipelineParam
      end

      class UpdatePipelinesParam
      end

      class GetPipelineParam
      end

      class UpdatePipelineParam
      end

      class DeletePipelineParam
      end

      class TransferPipelinesParam
      end

    end
  end
end
