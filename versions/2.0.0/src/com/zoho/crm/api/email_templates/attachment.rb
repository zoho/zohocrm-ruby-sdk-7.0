require_relative '../util/model'

module ZOHOCRMSDK
  module EmailTemplates
    class Attachment
      include Util::Model

      # Creates an instance of Attachment
      def initialize
        @size = nil
        @file_name = nil
        @file_id = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the size
        # @return A Integer value

      def size
        @size
      end

        # The method to set the value to size
        # @param size [Integer] A Integer

      def size=(size)
        if size!=nil and !size.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: size EXPECTED TYPE: Integer', nil, nil)
        end
        @size = size
        @key_modified['size'] = 1
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

        # The method to get the file_id
        # @return A String value

      def file_id
        @file_id
      end

        # The method to set the value to file_id
        # @param file_id [String] A String

      def file_id=(file_id)
        if file_id!=nil and !file_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_id EXPECTED TYPE: String', nil, nil)
        end
        @file_id = file_id
        @key_modified['file_id'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
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
