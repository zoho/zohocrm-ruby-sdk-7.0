require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Record
    class ImageUpload
      include Util::Model

      # Creates an instance of ImageUpload
      def initialize
        @preview_id__s = nil
        @file_name__s = nil
        @description__s = nil
        @size__s = nil
        @id = nil
        @sequence_number__s = nil
        @state__s = nil
        @file_id__s = nil
        @delete = nil
        @created_time__s = nil
        @modified_time__s = nil
        @created_by__s = nil
        @owner__s = nil
        @modified_by__s = nil
        @key_modified = Hash.new
      end

        # The method to get the preview_id__s
        # @return A String value

      def preview_id__s
        @preview_id__s
      end

        # The method to set the value to preview_id__s
        # @param preview_id__s [String] A String

      def preview_id__s=(preview_id__s)
        if preview_id__s!=nil and !preview_id__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: preview_id__s EXPECTED TYPE: String', nil, nil)
        end
        @preview_id__s = preview_id__s
        @key_modified['Preview_Id__s'] = 1
      end

        # The method to get the file_name__s
        # @return A String value

      def file_name__s
        @file_name__s
      end

        # The method to set the value to file_name__s
        # @param file_name__s [String] A String

      def file_name__s=(file_name__s)
        if file_name__s!=nil and !file_name__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_name__s EXPECTED TYPE: String', nil, nil)
        end
        @file_name__s = file_name__s
        @key_modified['File_Name__s'] = 1
      end

        # The method to get the description__s
        # @return A String value

      def description__s
        @description__s
      end

        # The method to set the value to description__s
        # @param description__s [String] A String

      def description__s=(description__s)
        if description__s!=nil and !description__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description__s EXPECTED TYPE: String', nil, nil)
        end
        @description__s = description__s
        @key_modified['Description__s'] = 1
      end

        # The method to get the size__s
        # @return A String value

      def size__s
        @size__s
      end

        # The method to set the value to size__s
        # @param size__s [String] A String

      def size__s=(size__s)
        if size__s!=nil and !size__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: size__s EXPECTED TYPE: String', nil, nil)
        end
        @size__s = size__s
        @key_modified['Size__s'] = 1
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

        # The method to get the sequence_number__s
        # @return A Integer value

      def sequence_number__s
        @sequence_number__s
      end

        # The method to set the value to sequence_number__s
        # @param sequence_number__s [Integer] A Integer

      def sequence_number__s=(sequence_number__s)
        if sequence_number__s!=nil and !sequence_number__s.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number__s EXPECTED TYPE: Integer', nil, nil)
        end
        @sequence_number__s = sequence_number__s
        @key_modified['Sequence_Number__s'] = 1
      end

        # The method to get the state__s
        # @return A String value

      def state__s
        @state__s
      end

        # The method to set the value to state__s
        # @param state__s [String] A String

      def state__s=(state__s)
        if state__s!=nil and !state__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state__s EXPECTED TYPE: String', nil, nil)
        end
        @state__s = state__s
        @key_modified['State__s'] = 1
      end

        # The method to get the file_id__s
        # @return A String value

      def file_id__s
        @file_id__s
      end

        # The method to set the value to file_id__s
        # @param file_id__s [String] A String

      def file_id__s=(file_id__s)
        if file_id__s!=nil and !file_id__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_id__s EXPECTED TYPE: String', nil, nil)
        end
        @file_id__s = file_id__s
        @key_modified['File_Id__s'] = 1
      end

        # The method to get the delete
        # @return A String value

      def delete
        @delete
      end

        # The method to set the value to delete
        # @param delete [String] A String

      def delete=(delete)
        if delete!=nil and !delete.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete EXPECTED TYPE: String', nil, nil)
        end
        @delete = delete
        @key_modified['_delete'] = 1
      end

        # The method to get the created_time__s
        # @return An instance of DateTime

      def created_time__s
        @created_time__s
      end

        # The method to set the value to created_time__s
        # @param created_time__s [DateTime] An instance of DateTime

      def created_time__s=(created_time__s)
        if created_time__s!=nil and !created_time__s.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time__s EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time__s = created_time__s
        @key_modified['Created_Time__s'] = 1
      end

        # The method to get the modified_time__s
        # @return An instance of DateTime

      def modified_time__s
        @modified_time__s
      end

        # The method to set the value to modified_time__s
        # @param modified_time__s [DateTime] An instance of DateTime

      def modified_time__s=(modified_time__s)
        if modified_time__s!=nil and !modified_time__s.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time__s EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time__s = modified_time__s
        @key_modified['Modified_Time__s'] = 1
      end

        # The method to get the created_by__s
        # @return An instance of Users::MinifiedUser

      def created_by__s
        @created_by__s
      end

        # The method to set the value to created_by__s
        # @param created_by__s [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by__s=(created_by__s)
        if created_by__s!=nil and !created_by__s.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by__s EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_by__s = created_by__s
        @key_modified['Created_By__s'] = 1
      end

        # The method to get the owner__s
        # @return An instance of Users::MinifiedUser

      def owner__s
        @owner__s
      end

        # The method to set the value to owner__s
        # @param owner__s [Users::MinifiedUser] An instance of Users::MinifiedUser

      def owner__s=(owner__s)
        if owner__s!=nil and !owner__s.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner__s EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @owner__s = owner__s
        @key_modified['Owner__s'] = 1
      end

        # The method to get the modified_by__s
        # @return An instance of Users::MinifiedUser

      def modified_by__s
        @modified_by__s
      end

        # The method to set the value to modified_by__s
        # @param modified_by__s [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by__s=(modified_by__s)
        if modified_by__s!=nil and !modified_by__s.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by__s EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @modified_by__s = modified_by__s
        @key_modified['Modified_By__s'] = 1
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
