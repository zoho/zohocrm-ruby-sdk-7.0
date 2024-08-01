require_relative '../header'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/choice'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Holidays
    class HolidaysOperations

        # Creates an instance of HolidaysOperations with the given parameters
        # @param x_crm_org [String] A String
      def initialize(x_crm_org=nil)
        if x_crm_org!=nil and !x_crm_org.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: x_crm_org EXPECTED TYPE: String', nil, nil)
        end
        @x_crm_org = x_crm_org
      end

        # The method to get holidays
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_holidays(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.GetHolidaysHeader'), @x_crm_org)
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create holidays
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_holidays(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.CreateHolidaysHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update holidays
        # @param request [Holidays] An instance of Holidays
        # @return An instance of APIResponse
      # @raise SDKException
      def update_holidays(request)
        if request!=nil and !request.is_a? Holidays
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: Holidays', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.UpdateHolidaysHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update holiday
        # @param holiday_id [Integer] A Integer
        # @param request [Holidays] An instance of Holidays
        # @return An instance of APIResponse
      # @raise SDKException
      def update_holiday(holiday_id, request)
        if !holiday_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: holiday_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? Holidays
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: Holidays', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays/'
        api_path = api_path + holiday_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.UpdateHolidayHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get holiday
        # @param holiday_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_holiday(holiday_id)
        if !holiday_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: holiday_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays/'
        api_path = api_path + holiday_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.GetHolidayHeader'), @x_crm_org)
        require_relative 'resonse_handler'
        handler_instance.api_call(ResonseHandler.name, 'application/json')
      end

        # The method to delete holiday
        # @param holiday_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_holiday(holiday_id)
        if !holiday_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: holiday_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/holidays/'
        api_path = api_path + holiday_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.Holidays.DeleteHolidayHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetHolidaysHeader
      end

      class GetHolidaysParam
          @@year =   Param.new('year', 'com.zoho.crm.api.Holidays.GetHolidaysParam')
        def self.year
          @@year
        end
          @@type =   Param.new('type', 'com.zoho.crm.api.Holidays.GetHolidaysParam')
        def self.type
          @@type
        end
          @@shift_id =   Param.new('shift_id', 'com.zoho.crm.api.Holidays.GetHolidaysParam')
        def self.shift_id
          @@shift_id
        end
      end

      class CreateHolidaysHeader
      end

      class UpdateHolidaysHeader
      end

      class UpdateHolidayHeader
      end

      class GetHolidayHeader
      end

      class DeleteHolidayHeader
      end

    end
  end
end
