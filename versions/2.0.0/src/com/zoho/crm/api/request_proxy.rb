require_relative 'util/constants'

module ZOHOCRMSDK
  class RequestProxy
    attr_reader :host , :port ,:user_name ,:password 
    def initialize(host:, port:, user_name:, password:"")

      raise SDKException.new(Constants::REQUEST_PROXY_ERROR, Constants::HOST_ERROR_MESSAGE) if host.nil?

      raise SDKException.new(Constants::REQUEST_PROXY_ERROR, Constants::PORT_ERROR_MESSAGE) if port.nil?
      @host = host
      @port = port
      @user_name = user_name
      @password = password
    end
  end
end