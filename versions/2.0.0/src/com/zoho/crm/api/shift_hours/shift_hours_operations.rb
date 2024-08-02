require_relative '../header'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module ShiftHours
    class ShiftHoursOperations

        # Creates an instance of ShiftHoursOperations with the given parameters
        # @param x_crm_org [String] A String
      def initialize(x_crm_org=nil)
        if x_crm_org!=nil and !x_crm_org.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: x_crm_org EXPECTED TYPE: String', nil, nil)
        end
        @x_crm_org = x_crm_org
      end

        # The method to get shift hours
        # @return An instance of APIResponse
      # @raise SDKException
      def get_shift_hours
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.GetShiftHoursHeader'), @x_crm_org)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create shifts hours
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_shifts_hours(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.CreateShiftsHoursHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update shift hours
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_shift_hours(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.UpdateShiftHoursHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get shift hour
        # @param shift_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_shift_hour(shift_id)
        if !shift_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours/'
        api_path = api_path + shift_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.GetShiftHourHeader'), @x_crm_org)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update shift hour
        # @param shift_id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_shift_hour(shift_id, request)
        if !shift_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours/'
        api_path = api_path + shift_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.UpdateShiftHourHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete shift hour
        # @param shift_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_shift_hour(shift_id)
        if !shift_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shift_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/business_hours/shift_hours/'
        api_path = api_path + shift_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.add_header(Header.new('X-CRM-ORG', 'com.zoho.crm.api.ShiftHours.DeleteShiftHourHeader'), @x_crm_org)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetShiftHoursHeader
      end

      class CreateShiftsHoursHeader
      end

      class UpdateShiftHoursHeader
      end

      class GetShiftHourHeader
      end

      class UpdateShiftHourHeader
      end

      class DeleteShiftHourHeader
      end

    end
  end
end
