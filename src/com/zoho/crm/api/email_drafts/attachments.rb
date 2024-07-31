require_relative '../util/model'

module ZOHOCRMSDK
  module EmailDrafts
    class Attachments
      include Util::Model

      # Creates an instance of Attachments
      def initialize
        @service_name = nil
        @file_size = nil
        @id = nil
        @file_name = nil
        @key_modified = Hash.new
      end

        # The method to get the service_name
        # @return A String value

      def service_name
        @service_name
      end

        # The method to set the value to service_name
        # @param service_name [String] A String

      def service_name=(service_name)
        if service_name!=nil and !service_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: service_name EXPECTED TYPE: String', nil, nil)
        end
        @service_name = service_name
        @key_modified['service_name'] = 1
      end

        # The method to get the file_size
        # @return A String value

      def file_size
        @file_size
      end

        # The method to set the value to file_size
        # @param file_size [String] A String

      def file_size=(file_size)
        if file_size!=nil and !file_size.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_size EXPECTED TYPE: String', nil, nil)
        end
        @file_size = file_size
        @key_modified['file_size'] = 1
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the file_name
        # @return A String value

      def file_name
        @file_name
      end

        # The method to set the value to file_name
        # @param file_name [String] A String

      def file_name=(file_name)
        if file_name!=nil and !file_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_name EXPECTED TYPE: String', nil, nil)
        end
        @file_name = file_name
        @key_modified['file_name'] = 1
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
