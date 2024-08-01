require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    require_relative 'response_handler'
    class ResponseWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of ResponseWrapper
      def initialize
        @global_picklists = nil
        @key_modified = Hash.new
      end

        # The method to get the global_picklists
        # @return An instance of Array

      def global_picklists
        @global_picklists
      end

        # The method to set the value to global_picklists
        # @param global_picklists [Array] An instance of Array

      def global_picklists=(global_picklists)
        if global_picklists!=nil and !global_picklists.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: global_picklists EXPECTED TYPE: Array', nil, nil)
        end
        @global_picklists = global_picklists
        @key_modified['global_picklists'] = 1
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
