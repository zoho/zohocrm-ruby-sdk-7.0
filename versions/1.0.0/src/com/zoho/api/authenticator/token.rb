module ZOHOCRMSDK
  module Authenticator
    class Token
      # This method to set authentication token to APIHTTPConnector instance.
      # @param connector A APIHTTPConnector class instance.
      # @raise SDKException
      def authenticate(url_connection); end

      def generate_token; end

      def remove; end
    end
  end
end