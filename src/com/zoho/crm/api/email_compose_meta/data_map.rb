require_relative '../util/model'

module ZOHOCRMSDK
  module EmailComposeMeta
    class DataMap
      include Util::Model

      # Creates an instance of DataMap
      def initialize
        @user = nil
        @features_available = nil
        @from_address = nil
        @relay_domains = nil
        @mergefieldsdata = nil
        @key_modified = Hash.new
      end

        # The method to get the user
        # @return An instance of User

      def user
        @user
      end

        # The method to set the value to user
        # @param user [User] An instance of User

      def user=(user)
        if user!=nil and !user.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: User', nil, nil)
        end
        @user = user
        @key_modified['user'] = 1
      end

        # The method to get the features_available
        # @return An instance of FeaturesAvailable

      def features_available
        @features_available
      end

        # The method to set the value to features_available
        # @param features_available [FeaturesAvailable] An instance of FeaturesAvailable

      def features_available=(features_available)
        if features_available!=nil and !features_available.is_a? FeaturesAvailable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: features_available EXPECTED TYPE: FeaturesAvailable', nil, nil)
        end
        @features_available = features_available
        @key_modified['features_available'] = 1
      end

        # The method to get the from_address
        # @return An instance of Array

      def from_address
        @from_address
      end

        # The method to set the value to from_address
        # @param from_address [Array] An instance of Array

      def from_address=(from_address)
        if from_address!=nil and !from_address.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from_address EXPECTED TYPE: Array', nil, nil)
        end
        @from_address = from_address
        @key_modified['from_address'] = 1
      end

        # The method to get the relay_domains
        # @return An instance of Array

      def relay_domains
        @relay_domains
      end

        # The method to set the value to relay_domains
        # @param relay_domains [Array] An instance of Array

      def relay_domains=(relay_domains)
        if relay_domains!=nil and !relay_domains.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: relay_domains EXPECTED TYPE: Array', nil, nil)
        end
        @relay_domains = relay_domains
        @key_modified['relay_domains'] = 1
      end

        # The method to get the mergefieldsdata
        # @return A String value

      def mergefieldsdata
        @mergefieldsdata
      end

        # The method to set the value to mergefieldsdata
        # @param mergefieldsdata [String] A String

      def mergefieldsdata=(mergefieldsdata)
        if mergefieldsdata!=nil and !mergefieldsdata.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mergefieldsdata EXPECTED TYPE: String', nil, nil)
        end
        @mergefieldsdata = mergefieldsdata
        @key_modified['mergeFieldsData'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end
