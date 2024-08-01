require_relative 'datacenter'

module ZOHOCRMSDK
  module DC
    class CADataCenter < DataCenter
      def initialize; end

      def get_iam_url
        'https://accounts.zoho.ca/oauth/v2/token'
      end

      def get_file_upload_url
        'https://content.zohoapis.ca'
      end

      PRODUCTION = Environment.new('https://www.zohoapis.ca', CADataCenter.new.get_iam_url, CADataCenter.new.get_file_upload_url)
      SANDBOX = Environment.new('https://sandbox.zohoapis.ca', CADataCenter.new.get_iam_url, CADataCenter.new.get_file_upload_url)
      DEVELOPER = Environment.new('https://developer.zohoapis.ca', CADataCenter.new.get_iam_url, CADataCenter.new.get_file_upload_url)
    end
  end
end