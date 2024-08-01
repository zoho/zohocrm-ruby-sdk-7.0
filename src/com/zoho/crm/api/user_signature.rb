require_relative '../../api/logger/sdk_logger'
module ZOHOCRMSDK
  # This class represents the CRM user email.
  class UserSignature
    attr_reader :name

    # Creates an UserSignature class instance with the specified user name.
    # @param name [String] A String containing the CRM user name
    # @raise SDKException
    def initialize(name)

      @name = name
    end
  end
end