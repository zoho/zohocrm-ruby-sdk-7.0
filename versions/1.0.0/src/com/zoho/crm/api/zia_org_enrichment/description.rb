require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaOrgEnrichment
    class Description
      include Util::Model

      # Creates an instance of Description
      def initialize
        @title = nil
        @description = nil
        @key_modified = Hash.new
      end

        # The method to get the title
        # @return A String value

      def title
        @title
      end

        # The method to set the value to title
        # @param title [String] A String

      def title=(title)
        if title!=nil and !title.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: title EXPECTED TYPE: String', nil, nil)
        end
        @title = title
        @key_modified['title'] = 1
      end

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
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
