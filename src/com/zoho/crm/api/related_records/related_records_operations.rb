require_relative '../header'
require_relative '../header_map'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module ZOHOCRMSDK
  module RelatedRecords
    class RelatedRecordsOperations

        # Creates an instance of RelatedRecordsOperations with the given parameters
        # @param related_list_api_name [String] A String
        # @param module_api_name [String] A String
      def initialize(related_list_api_name, module_api_name)
        if !related_list_api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_list_api_name EXPECTED TYPE: String', nil, nil)
        end
        if !module_api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
        end
        @related_list_api_name = related_list_api_name
        @module_api_name = module_api_name
      end

        # The method to get related records
        # @param record_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_related_records(record_id, param_instance=nil, header_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update related records
        # @param record_id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_related_records(record_id, request, header_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delink records
        # @param record_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delink_records(record_id, param_instance=nil, header_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get related records using external id
        # @param external_value [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_related_records_using_external_id(external_value, param_instance=nil, header_instance=nil)
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update related records using external id
        # @param external_value [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_related_records_using_external_id(external_value, request, header_instance=nil)
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete related records using external id
        # @param external_value [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_related_records_using_external_id(external_value, param_instance=nil, header_instance=nil)
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get related record
        # @param related_record_id [Integer] A Integer
        # @param record_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_related_record(related_record_id, record_id, param_instance=nil, header_instance=nil)
        if !related_record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + related_record_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update related record
        # @param related_record_id [Integer] A Integer
        # @param record_id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_related_record(related_record_id, record_id, request, header_instance=nil)
        if !related_record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + related_record_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delink record
        # @param related_record_id [Integer] A Integer
        # @param record_id [Integer] A Integer
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delink_record(related_record_id, record_id, header_instance=nil)
        if !related_record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + related_record_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get related record using external id
        # @param external_field_value [String] A String
        # @param external_value [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_related_record_using_external_id(external_field_value, external_value, param_instance=nil, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update related record using external id
        # @param external_field_value [String] A String
        # @param external_value [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_related_record_using_external_id(external_field_value, external_value, request, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete related record using external id
        # @param external_field_value [String] A String
        # @param external_value [String] A String
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_related_record_using_external_id(external_field_value, external_value, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if !external_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_value EXPECTED TYPE: String', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_value.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.header = header_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get deleted parent records related record
        # @param record_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_deleted_parent_records_related_record(record_id, param_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/deleted/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/'
        api_path = api_path + @related_list_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        Util::Utility.get_related_lists(@related_list_api_name, @module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetRelatedRecordsParam
          @@page =   Param.new('page', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsParam')
        def self.per_page
          @@per_page
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsParam')
        def self.fields
          @@fields
        end
      end

      class GetRelatedRecordsHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRelatedRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.UpdateRelatedRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class DelinkRecordsParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.RelatedRecords.DelinkRecordsParam')
        def self.ids
          @@ids
        end
      end

      class DelinkRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.DelinkRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetRelatedRecordsUsingExternalIDParam
          @@page =   Param.new('page', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsUsingExternalIDParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsUsingExternalIDParam')
        def self.per_page
          @@per_page
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsUsingExternalIDParam')
        def self.fields
          @@fields
        end
      end

      class GetRelatedRecordsUsingExternalIDHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsUsingExternalIDHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordsUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRelatedRecordsUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.UpdateRelatedRecordsUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class DeleteRelatedRecordsUsingExternalIDParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.RelatedRecords.DeleteRelatedRecordsUsingExternalIDParam')
        def self.ids
          @@ids
        end
      end

      class DeleteRelatedRecordsUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.DeleteRelatedRecordsUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetRelatedRecordParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordParam')
        def self.fields
          @@fields
        end
      end

      class GetRelatedRecordHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRelatedRecordHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.UpdateRelatedRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class DelinkRecordHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.DelinkRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetRelatedRecordUsingExternalIDParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordUsingExternalIDParam')
        def self.fields
          @@fields
        end
      end

      class GetRelatedRecordUsingExternalIDHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordUsingExternalIDHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.GetRelatedRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRelatedRecordUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.UpdateRelatedRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class DeleteRelatedRecordUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.RelatedRecords.DeleteRelatedRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetDeletedParentRecordsRelatedRecordParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RelatedRecords.GetDeletedParentRecordsRelatedRecordParam')
        def self.fields
          @@fields
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.RelatedRecords.GetDeletedParentRecordsRelatedRecordParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.RelatedRecords.GetDeletedParentRecordsRelatedRecordParam')
        def self.per_page
          @@per_page
        end
          @@ids =   Param.new('ids', 'com.zoho.crm.api.RelatedRecords.GetDeletedParentRecordsRelatedRecordParam')
        def self.ids
          @@ids
        end
      end

    end
  end
end
