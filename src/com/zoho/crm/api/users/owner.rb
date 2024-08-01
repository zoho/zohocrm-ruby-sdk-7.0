require_relative '../util/model'

module ZOHOCRMSDK
  module Users
    class Owner
      include Util::Model

      # Creates an instance of Owner
      def initialize
        @name = nil
        @id = nil
        @last_name = nil
        @first_name = nil
        @key_modified = Hash.new
      end

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
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

        # The method to get the last_name
        # @return A String value

      def last_name
        @last_name
      end

        # The method to set the value to last_name
        # @param last_name [String] A String

      def last_name=(last_name)
        if last_name!=nil and !last_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_name EXPECTED TYPE: String', nil, nil)
        end
        @last_name = last_name
        @key_modified['last_name'] = 1
      end

        # The method to get the first_name
        # @return A String value

      def first_name
        @first_name
      end

        # The method to set the value to first_name
        # @param first_name [String] A String

      def first_name=(first_name)
        if first_name!=nil and !first_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: first_name EXPECTED TYPE: String', nil, nil)
        end
        @first_name = first_name
        @key_modified['first_name'] = 1
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
