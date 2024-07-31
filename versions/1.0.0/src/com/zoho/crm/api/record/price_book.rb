require_relative '../record/record'
require_relative '../tags/tag'
require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Record
    class PriceBook < Record
      include Util::Model

      # Creates an instance of PriceBook
      def initialize
        super
      end

        # The method to get the name
        # @return A String value

      def name
        get_key_value('name')
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('name', name)
      end

        # The method to get the id
        # @return A Integer value

      def id
        get_key_value('id')
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        add_key_value('id', id)
      end

        # The method to get the created_by
        # @return An instance of Users::MinifiedUser

      def created_by
        get_key_value('Created_By')
      end

        # The method to set the value to created_by
        # @param created_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('Created_By', created_by)
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        get_key_value('Created_Time')
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        add_key_value('Created_Time', created_time)
      end

        # The method to get the modified_by
        # @return An instance of Users::MinifiedUser

      def modified_by
        get_key_value('Modified_By')
      end

        # The method to set the value to modified_by
        # @param modified_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('Modified_By', modified_by)
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        get_key_value('Modified_Time')
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        add_key_value('Modified_Time', modified_time)
      end

        # The method to get the tag
        # @return An instance of Array

      def tag
        get_key_value('Tag')
      end

        # The method to set the value to tag
        # @param tag [Array] An instance of Array

      def tag=(tag)
        if tag!=nil and !tag.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tag EXPECTED TYPE: Array', nil, nil)
        end
        add_key_value('Tag', tag)
      end

    end
  end
end
