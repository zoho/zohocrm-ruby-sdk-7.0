require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaOrgEnrichment
    require_relative 'action_handler'
    class ActionWrapper
      include Util::Model
      include ActionHandler

      # Creates an instance of ActionWrapper
      def initialize
        @ziaorgenrichment = nil
        @key_modified = Hash.new
      end

        # The method to get the ziaorgenrichment
        # @return An instance of Array

      def ziaorgenrichment
        @ziaorgenrichment
      end

        # The method to set the value to ziaorgenrichment
        # @param ziaorgenrichment [Array] An instance of Array

      def ziaorgenrichment=(ziaorgenrichment)
        if ziaorgenrichment!=nil and !ziaorgenrichment.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ziaorgenrichment EXPECTED TYPE: Array', nil, nil)
        end
        @ziaorgenrichment = ziaorgenrichment
        @key_modified['__zia_org_enrichment'] = 1
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
