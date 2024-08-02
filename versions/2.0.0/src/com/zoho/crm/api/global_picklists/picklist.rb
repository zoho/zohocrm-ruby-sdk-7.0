require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    class Picklist
      include Util::Model

      # Creates an instance of Picklist
      def initialize
        @display_label = nil
        @created_time = nil
        @modified_time = nil
        @id = nil
        @api_name = nil
        @actual_label = nil
        @description = nil
        @modified_by = nil
        @created_by = nil
        @presence = nil
        @pick_list_values_sorted_lexically = nil
        @pick_list_values = nil
        @key_modified = Hash.new
      end

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
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
        @key_modified['created_time'] = 1
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
        @key_modified['modified_time'] = 1
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

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the actual_label
        # @return A String value

      def actual_label
        @actual_label
      end

        # The method to set the value to actual_label
        # @param actual_label [String] A String

      def actual_label=(actual_label)
        if actual_label!=nil and !actual_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actual_label EXPECTED TYPE: String', nil, nil)
        end
        @actual_label = actual_label
        @key_modified['actual_label'] = 1
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
        @key_modified['modified_by'] = 1
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
        @key_modified['created_by'] = 1
      end

        # The method to get the presence
        # @return A Boolean value

      def presence
        @presence
      end

        # The method to set the value to presence
        # @param presence [Boolean] A Boolean

      def presence=(presence)
        if presence!=nil and ! [true, false].include?presence
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: presence EXPECTED TYPE: Boolean', nil, nil)
        end
        @presence = presence
        @key_modified['presence'] = 1
      end

        # The method to get the pick_list_values_sorted_lexically
        # @return A Boolean value

      def pick_list_values_sorted_lexically
        @pick_list_values_sorted_lexically
      end

        # The method to set the value to pick_list_values_sorted_lexically
        # @param pick_list_values_sorted_lexically [Boolean] A Boolean

      def pick_list_values_sorted_lexically=(pick_list_values_sorted_lexically)
        if pick_list_values_sorted_lexically!=nil and ! [true, false].include?pick_list_values_sorted_lexically
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values_sorted_lexically EXPECTED TYPE: Boolean', nil, nil)
        end
        @pick_list_values_sorted_lexically = pick_list_values_sorted_lexically
        @key_modified['pick_list_values_sorted_lexically'] = 1
      end

        # The method to get the pick_list_values
        # @return An instance of Array

      def pick_list_values
        @pick_list_values
      end

        # The method to set the value to pick_list_values
        # @param pick_list_values [Array] An instance of Array

      def pick_list_values=(pick_list_values)
        if pick_list_values!=nil and !pick_list_values.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values EXPECTED TYPE: Array', nil, nil)
        end
        @pick_list_values = pick_list_values
        @key_modified['pick_list_values'] = 1
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
