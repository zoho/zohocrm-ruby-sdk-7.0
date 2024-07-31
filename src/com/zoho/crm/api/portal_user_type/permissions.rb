require_relative '../util/model'

module ZOHOCRMSDK
  module PortalUserType
    class Permissions
      include Util::Model

      # Creates an instance of Permissions
      def initialize
        @view = nil
        @edit = nil
        @edit_shared_records = nil
        @create = nil
        @delete = nil
        @delete_attachment = nil
        @create_attachment = nil
        @key_modified = Hash.new
      end

        # The method to get the view
        # @return A Boolean value

      def view
        @view
      end

        # The method to set the value to view
        # @param view [Boolean] A Boolean

      def view=(view)
        if view!=nil and ! [true, false].include?view
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: view EXPECTED TYPE: Boolean', nil, nil)
        end
        @view = view
        @key_modified['view'] = 1
      end

        # The method to get the edit
        # @return A Boolean value

      def edit
        @edit
      end

        # The method to set the value to edit
        # @param edit [Boolean] A Boolean

      def edit=(edit)
        if edit!=nil and ! [true, false].include?edit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: edit EXPECTED TYPE: Boolean', nil, nil)
        end
        @edit = edit
        @key_modified['edit'] = 1
      end

        # The method to get the edit_shared_records
        # @return A Boolean value

      def edit_shared_records
        @edit_shared_records
      end

        # The method to set the value to edit_shared_records
        # @param edit_shared_records [Boolean] A Boolean

      def edit_shared_records=(edit_shared_records)
        if edit_shared_records!=nil and ! [true, false].include?edit_shared_records
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: edit_shared_records EXPECTED TYPE: Boolean', nil, nil)
        end
        @edit_shared_records = edit_shared_records
        @key_modified['edit_shared_records'] = 1
      end

        # The method to get the create
        # @return A Boolean value

      def create
        @create
      end

        # The method to set the value to create
        # @param create [Boolean] A Boolean

      def create=(create)
        if create!=nil and ! [true, false].include?create
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: create EXPECTED TYPE: Boolean', nil, nil)
        end
        @create = create
        @key_modified['create'] = 1
      end

        # The method to get the delete
        # @return A Boolean value

      def delete
        @delete
      end

        # The method to set the value to delete
        # @param delete [Boolean] A Boolean

      def delete=(delete)
        if delete!=nil and ! [true, false].include?delete
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete EXPECTED TYPE: Boolean', nil, nil)
        end
        @delete = delete
        @key_modified[Constants::REQUEST_METHOD_DELETE] = 1
      end

        # The method to get the delete_attachment
        # @return A Boolean value

      def delete_attachment
        @delete_attachment
      end

        # The method to set the value to delete_attachment
        # @param delete_attachment [Boolean] A Boolean

      def delete_attachment=(delete_attachment)
        if delete_attachment!=nil and ! [true, false].include?delete_attachment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete_attachment EXPECTED TYPE: Boolean', nil, nil)
        end
        @delete_attachment = delete_attachment
        @key_modified['delete_attachment'] = 1
      end

        # The method to get the create_attachment
        # @return A Boolean value

      def create_attachment
        @create_attachment
      end

        # The method to set the value to create_attachment
        # @param create_attachment [Boolean] A Boolean

      def create_attachment=(create_attachment)
        if create_attachment!=nil and ! [true, false].include?create_attachment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: create_attachment EXPECTED TYPE: Boolean', nil, nil)
        end
        @create_attachment = create_attachment
        @key_modified['create_attachment'] = 1
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
