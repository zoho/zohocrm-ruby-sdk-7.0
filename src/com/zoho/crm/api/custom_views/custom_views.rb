require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module CustomViews
    class CustomViews
      include Util::Model

      # Creates an instance of CustomViews
      def initialize
        @display_value = nil
        @system_name = nil
        @category = nil
        @created_time = nil
        @modified_time = nil
        @last_accessed_time = nil
        @name = nil
        @created_by = nil
        @modified_by = nil
        @module_1 = nil
        @criteria = nil
        @default = nil
        @system_defined = nil
        @locked = nil
        @favorite = nil
        @offline = nil
        @access_type = nil
        @shared_to = nil
        @fields = nil
        @sort_by = nil
        @sort_order = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the display_value
        # @return A String value

      def display_value
        @display_value
      end

        # The method to set the value to display_value
        # @param display_value [String] A String

      def display_value=(display_value)
        if display_value!=nil and !display_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
        end
        @display_value = display_value
        @key_modified['display_value'] = 1
      end

        # The method to get the system_name
        # @return A String value

      def system_name
        @system_name
      end

        # The method to set the value to system_name
        # @param system_name [String] A String

      def system_name=(system_name)
        if system_name!=nil and !system_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_name EXPECTED TYPE: String', nil, nil)
        end
        @system_name = system_name
        @key_modified['system_name'] = 1
      end

        # The method to get the category
        # @return A String value

      def category
        @category
      end

        # The method to set the value to category
        # @param category [String] A String

      def category=(category)
        if category!=nil and !category.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: String', nil, nil)
        end
        @category = category
        @key_modified['category'] = 1
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

        # The method to get the last_accessed_time
        # @return An instance of DateTime

      def last_accessed_time
        @last_accessed_time
      end

        # The method to set the value to last_accessed_time
        # @param last_accessed_time [DateTime] An instance of DateTime

      def last_accessed_time=(last_accessed_time)
        if last_accessed_time!=nil and !last_accessed_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_accessed_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @last_accessed_time = last_accessed_time
        @key_modified['last_accessed_time'] = 1
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

        # The method to get the created_by
        # @return An instance of Owner

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [Owner] An instance of Owner

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: Owner', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the modified_by
        # @return An instance of Owner

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [Owner] An instance of Owner

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: Owner', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
      end

        # The method to get the module
        # @return An instance of Owner

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Owner] An instance of Owner

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Owner', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the criteria
        # @return An instance of Criteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Criteria] An instance of Criteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
      end

        # The method to get the default
        # @return A Boolean value

      def default
        @default
      end

        # The method to set the value to default
        # @param default [Boolean] A Boolean

      def default=(default)
        if default!=nil and ! [true, false].include?default
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default EXPECTED TYPE: Boolean', nil, nil)
        end
        @default = default
        @key_modified['default'] = 1
      end

        # The method to get the system_defined
        # @return A Boolean value

      def system_defined
        @system_defined
      end

        # The method to set the value to system_defined
        # @param system_defined [Boolean] A Boolean

      def system_defined=(system_defined)
        if system_defined!=nil and ! [true, false].include?system_defined
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_defined EXPECTED TYPE: Boolean', nil, nil)
        end
        @system_defined = system_defined
        @key_modified['system_defined'] = 1
      end

        # The method to get the locked
        # @return A Boolean value

      def locked
        @locked
      end

        # The method to set the value to locked
        # @param locked [Boolean] A Boolean

      def locked=(locked)
        if locked!=nil and ! [true, false].include?locked
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locked EXPECTED TYPE: Boolean', nil, nil)
        end
        @locked = locked
        @key_modified['locked'] = 1
      end

        # The method to get the favorite
        # @return A Integer value

      def favorite
        @favorite
      end

        # The method to set the value to favorite
        # @param favorite [Integer] A Integer

      def favorite=(favorite)
        if favorite!=nil and !favorite.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: favorite EXPECTED TYPE: Integer', nil, nil)
        end
        @favorite = favorite
        @key_modified['favorite'] = 1
      end

        # The method to get the offline
        # @return A Boolean value

      def offline
        @offline
      end

        # The method to set the value to offline
        # @param offline [Boolean] A Boolean

      def offline=(offline)
        if offline!=nil and ! [true, false].include?offline
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: offline EXPECTED TYPE: Boolean', nil, nil)
        end
        @offline = offline
        @key_modified['offline'] = 1
      end

        # The method to get the access_type
        # @return An instance of Util::Choice

      def access_type
        @access_type
      end

        # The method to set the value to access_type
        # @param access_type [Util::Choice] An instance of Util::Choice

      def access_type=(access_type)
        if access_type!=nil and !access_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: access_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @access_type = access_type
        @key_modified['access_type'] = 1
      end

        # The method to get the shared_to
        # @return An instance of Array

      def shared_to
        @shared_to
      end

        # The method to set the value to shared_to
        # @param shared_to [Array] An instance of Array

      def shared_to=(shared_to)
        if shared_to!=nil and !shared_to.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_to EXPECTED TYPE: Array', nil, nil)
        end
        @shared_to = shared_to
        @key_modified['shared_to'] = 1
      end

        # The method to get the fields
        # @return An instance of Array

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Array] An instance of Array

      def fields=(fields)
        if fields!=nil and !fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the sort_by
        # @return An instance of SortBy

      def sort_by
        @sort_by
      end

        # The method to set the value to sort_by
        # @param sort_by [SortBy] An instance of SortBy

      def sort_by=(sort_by)
        if sort_by!=nil and !sort_by.is_a? SortBy
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_by EXPECTED TYPE: SortBy', nil, nil)
        end
        @sort_by = sort_by
        @key_modified['sort_by'] = 1
      end

        # The method to get the sort_order
        # @return An instance of Util::Choice

      def sort_order
        @sort_order
      end

        # The method to set the value to sort_order
        # @param sort_order [Util::Choice] An instance of Util::Choice

      def sort_order=(sort_order)
        if sort_order!=nil and !sort_order.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_order EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @sort_order = sort_order
        @key_modified['sort_order'] = 1
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
