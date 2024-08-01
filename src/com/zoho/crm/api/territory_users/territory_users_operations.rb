require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module TerritoryUsers
    class TerritoryUsersOperations

      # Creates an instance of TerritoryUsersOperations
      def initialize
      end

        # The method to get territory users
        # @param territory [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_territory_users(territory)
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update territory users
        # @param territory [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_territory_users(territory, request)
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to deassociate territory users
        # @param territory [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def deassociate_territory_users(territory, param_instance=nil)
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get territory user
        # @param user [Integer] A Integer
        # @param territory [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_territory_user(user, territory)
        if !user.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: Integer', nil, nil)
        end
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users/'
        api_path = api_path + user.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update territory user
        # @param user [Integer] A Integer
        # @param territory [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def update_territory_user(user, territory)
        if !user.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: Integer', nil, nil)
        end
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users/'
        api_path = api_path + user.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'ACTION'
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to deassociate territory user
        # @param user [Integer] A Integer
        # @param territory [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def deassociate_territory_user(user, territory)
        if !user.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: Integer', nil, nil)
        end
        if !territory.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/territories/'
        api_path = api_path + territory.to_s
        api_path = api_path + '/users/'
        api_path = api_path + user.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class DeassociateTerritoryUsersParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.TerritoryUsers.DeassociateTerritoryUsersParam')
        def self.ids
          @@ids
        end
      end

    end
  end
end
