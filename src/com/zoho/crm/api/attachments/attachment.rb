require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Attachments
    class Attachment
      include Util::Model

      # Creates an instance of Attachment
      def initialize
        @owner = nil
        @modified_by = nil
        @created_by = nil
        @parent_id = nil
        @sharing_permission = nil
        @attachment_type = nil
        @id = nil
        @modified_time = nil
        @created_time = nil
        @file_name = nil
        @size = nil
        @editable = nil
        @file_id = nil
        @type = nil
        @se_module = nil
        @state = nil
        @link_url = nil
        @key_modified = Hash.new
      end

        # The method to get the owner
        # @return An instance of Users::MinifiedUser

      def owner
        @owner
      end

        # The method to set the value to owner
        # @param owner [Users::MinifiedUser] An instance of Users::MinifiedUser

      def owner=(owner)
        if owner!=nil and !owner.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @owner = owner
        @key_modified['Owner'] = 1
      end

        # The method to get the modified_by
        # @return An instance of Users::MinifiedUser

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['Modified_By'] = 1
      end

        # The method to get the created_by
        # @return An instance of Users::MinifiedUser

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_by = created_by
        @key_modified['Created_By'] = 1
      end

        # The method to get the parent_id
        # @return An instance of ParentId

      def parent_id
        @parent_id
      end

        # The method to set the value to parent_id
        # @param parent_id [ParentId] An instance of ParentId

      def parent_id=(parent_id)
        if parent_id!=nil and !parent_id.is_a? ParentId
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent_id EXPECTED TYPE: ParentId', nil, nil)
        end
        @parent_id = parent_id
        @key_modified['Parent_Id'] = 1
      end

        # The method to get the sharing_permission
        # @return A String value

      def sharing_permission
        @sharing_permission
      end

        # The method to set the value to sharing_permission
        # @param sharing_permission [String] A String

      def sharing_permission=(sharing_permission)
        if sharing_permission!=nil and !sharing_permission.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sharing_permission EXPECTED TYPE: String', nil, nil)
        end
        @sharing_permission = sharing_permission
        @key_modified['$sharing_permission'] = 1
      end

        # The method to get the attachment_type
        # @return A Integer value

      def attachment_type
        @attachment_type
      end

        # The method to set the value to attachment_type
        # @param attachment_type [Integer] A Integer

      def attachment_type=(attachment_type)
        if attachment_type!=nil and !attachment_type.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment_type EXPECTED TYPE: Integer', nil, nil)
        end
        @attachment_type = attachment_type
        @key_modified['$attachment_type'] = 1
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

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['Modified_Time'] = 1
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time = created_time
        @key_modified['Created_Time'] = 1
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
        @key_modified['File_Name'] = 1
      end

        # The method to get the size
        # @return A String value

      def size
        @size
      end

        # The method to set the value to size
        # @param size [String] A String

      def size=(size)
        if size!=nil and !size.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: size EXPECTED TYPE: String', nil, nil)
        end
        @size = size
        @key_modified['Size'] = 1
      end

        # The method to get the editable
        # @return A Boolean value

      def editable
        @editable
      end

        # The method to set the value to editable
        # @param editable [Boolean] A Boolean

      def editable=(editable)
        if editable!=nil and ! [true, false].include?editable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editable EXPECTED TYPE: Boolean', nil, nil)
        end
        @editable = editable
        @key_modified['$editable'] = 1
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
        @key_modified['$file_id'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['$type'] = 1
      end

        # The method to get the se_module
        # @return A String value

      def se_module
        @se_module
      end

        # The method to set the value to se_module
        # @param se_module [String] A String

      def se_module=(se_module)
        if se_module!=nil and !se_module.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: se_module EXPECTED TYPE: String', nil, nil)
        end
        @se_module = se_module
        @key_modified['$se_module'] = 1
      end

        # The method to get the state
        # @return A String value

      def state
        @state
      end

        # The method to set the value to state
        # @param state [String] A String

      def state=(state)
        if state!=nil and !state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
        end
        @state = state
        @key_modified['$state'] = 1
      end

        # The method to get the link_url
        # @return A String value

      def link_url
        @link_url
      end

        # The method to set the value to link_url
        # @param link_url [String] A String

      def link_url=(link_url)
        if link_url!=nil and !link_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: link_url EXPECTED TYPE: String', nil, nil)
        end
        @link_url = link_url
        @key_modified['$link_url'] = 1
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
