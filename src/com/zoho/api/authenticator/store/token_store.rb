module ZOHOCRMSDK
  module Store
    class TokenStore
      # This method is used to get the user token details.
      # @param token A Token class instance.
      # @return A Token class instance representing the user token details.
      # @raise SDKException
      def find_token(token); end

      def get_tokens; end

      # This method is used to store the user token details.
      # @param token A Token class instance.
      # @raise SDKException
      def save_token(token); end

      # This method is used to delete the user token details.
      # @param id A String containing id
      # @raise SDKException
      def delete_token(id); end

      def delete_tokens; end

      # This method is used to get the user token details.
      # @param id A String containing id
      # @return A Token class instance representing the user token details.
      # @raise SDKException
      def find_token_by_id(id); end
    end
  end
end