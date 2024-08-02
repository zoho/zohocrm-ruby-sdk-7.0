=begin
Copyright (c) 2021, ZOHO CORPORATION PRIVATE LIMITED 
All rights reserved. 
 
   Licensed under the Apache License, Version 2.0 (the "License"); 
   you may not use this file except in compliance with the License. 
   You may obtain a copy of the License at 
 
       http://www.apache.org/licenses/LICENSE-2.0 
 
   Unless required by applicable law or agreed to in writing, software 
   distributed under the License is distributed on an "AS IS" BASIS, 
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
   See the License for the specific language governing permissions and 
   limitations under the License.
=end

require 'uri'
require 'net/http'
require 'cgi'
require 'json'
require_relative '../../api/logger/sdk_logger'
require_relative 'util/constants'

module ZOHOCRMSDK
  # This class to initialize Zoho CRM SDK.
  class Initializer
    attr_accessor :json_details, :environment, :store, :token, :initializer, :local, :sdk_config, :resources_path, :request_proxy
    @@json_details = nil

    Thread.current['initi'] = nil

    def self.json_details
      @@json_details
    end

    def self.initialize(environment:, token:, store: nil, sdk_config: nil, resources_path: nil, log: nil, request_proxy: nil)
      error = {}

      require_relative '../../crm/api/dc/datacenter'

      unless environment.is_a? (DC::DataCenter::Environment)
        error[Constants::ERROR_HASH_FIELD] = 'environment'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = DC::DataCenter::Environment

        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::ENVIRONMENT_ERROR_MESSAGE, error, nil)

      end

      require_relative '../../api/authenticator/token'

      unless token.is_a?(Authenticator::Token)
        error[Constants::ERROR_HASH_FIELD] = 'token'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = Authenticator::Token

        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::TOKEN_ERROR_MESSAGE, error, nil)

      end

      require_relative '../../api/authenticator/store/token_store'

      if !store.nil? && !store.is_a?(Store::TokenStore)
        error[Constants::ERROR_HASH_FIELD] = 'store'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = Store::TokenStore

        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::STORE_ERROR_MESSAGE, error, nil)

      end

      require_relative 'sdk_config'

      if !sdk_config.nil? && !sdk_config.is_a?(SDKConfig)
        error[Constants::ERROR_HASH_FIELD] = 'sdk_config'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = SDKConfig

        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::SDK_CONFIG_ERROR_MESSAGE, error, nil)

      end

      if !request_proxy.nil? && !request_proxy.is_a?(RequestProxy)
        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::REQUEST_PROXY_ERROR, nil, nil)
      end

      if store.nil?
        require_relative '../../api/authenticator/store/file_store'

        store = Store::FileStore.new(File.join(Dir.pwd, Constants::TOKEN_FILE))
      
      end
      
      if sdk_config.nil?
        sdk_config = SDKConfig.new
      end
      
      if resources_path.nil?
        resources_path = Dir.pwd
      end

      if !File.directory?(resources_path)
        raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::RESOURCE_PATH_INVALID_ERROR_MESSAGE, nil, nil)
      end

      log = SDKLog::Log.initialize(level: Levels::OFF, path: nil) if log.nil?
      SDKLog::SDKLogger.initialize(log)

      @@json_details = get_JSONDetails

      @@initializer = Initializer.new

      @@initializer.environment = environment

      @@initializer.sdk_config = sdk_config

      @@initializer.store = store

      @@initializer.resources_path = resources_path

      @@initializer.request_proxy = request_proxy

      @@initializer.token = token

      unless @@initializer.token.nil?
        @@initializer.token.generate_token
      end
      @@initializer.token = token

      SDKLog::SDKLogger.info(Constants::INITIALIZATION_SUCCESSFUL + @@initializer.to_s)
    rescue SDKException => e
      raise e
    rescue StandardError => e
      raise SDKException.new(nil, Constants::INITIALIZATION_ERROR, nil, e)
    end

    def self.get_JSONDetails
      if @@json_details.nil? || @@json_details.length == 0
        return JSON.parse(File.open(File.join(File.dirname(File.expand_path(__FILE__)), '../../../../' + Constants::JSON_DETAILS_FILE_PATH)).read)
      end
      @@json_details
    rescue StandardError => e
      raise SDKException.new(nil, Constants::EXCEPTION_JSONDETAILS, nil, e)
    end

    def self.get_initializer
      return Thread.current['initi'] unless Thread.current['initi'].nil?

      @@initializer
    end

    def self.switch_user(environment: nil, token: nil, sdk_config: nil, request_proxy: nil)
      
      if @@initializer.nil?
        raise SDKException.new(Constants::SDK_UNINITIALIZATION_ERROR, Constants::SDK_UNINITIALIZATION_MESSAGE)
      end

      require_relative '../../crm/api/dc/datacenter'

      if !environment.nil? and !environment.is_a?(DC::DataCenter::Environment)
        error[Constants::ERROR_HASH_FIELD] = 'environment'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = DC::DataCenter::Environment

        raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::ENVIRONMENT_ERROR_MESSAGE, error, nil)

      end

      require_relative '../../api/authenticator/token'

      if !token.nil? and !token.is_a?(Authenticator::Token)
        error[Constants::ERROR_HASH_FIELD] = 'token'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = Authenticator::Token

        raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::TOKEN_ERROR_MESSAGE, error, nil)

      end

      require_relative 'request_proxy'

      if !request_proxy.nil? and !request_proxy.is_a?(RequestProxy)
        error[Constants::ERROR_HASH_FIELD] = 'request_proxy'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = RequestProxy

        raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::REQUEST_PROXY_ERROR_MESSAGE, error, nil)

      end

      require_relative 'sdk_config'

      if !sdk_config.nil? and !sdk_config.is_a?(SDKConfig)
        error[Constants::ERROR_HASH_FIELD] = 'sdk_config'

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = SDKConfig

        raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::SDK_CONFIG_ERROR_MESSAGE, error, nil)

      end

      initializer = Initializer.new

      previous_initializer = Initializer.get_initializer

      initializer.environment = environment.nil? ? previous_initializer.environment : environment

      initializer.sdk_config = sdk_config.nil? ? previous_initializer.sdk_config : sdk_config

      initializer.store = @@initializer.store

      initializer.resources_path = @@initializer.resources_path

      initializer.request_proxy = request_proxy

      if !token.nil?
        token.generate_token
      end

      initializer.token = token.nil? ? previous_initializer.token : token

      Thread.current['initi'] = initializer

      SDKLog::SDKLogger.info(Constants::INITIALIZATION_SWITCHED + initializer.to_s)
    end

    def to_s
      Constants::IN_ENVIRONMENT + Initializer.get_initializer.environment.url + '.'
    end
  end
end