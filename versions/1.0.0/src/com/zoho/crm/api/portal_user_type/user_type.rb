require_relative '../util/model'

module ZOHOCRMSDK
  module PortalUserType
    class UserType
      include Util::Model

      # Creates an instance of UserType
      def initialize
        @personality_module = nil
        @created_time = nil
        @modified_time = nil
        @modified_by = nil
        @created_by = nil
        @name = nil
        @active = nil
        @default = nil
        @no_of_users = nil
        @id = nil
        @modules = nil
        @key_modified = Hash.new
      end

        # The method to get the personality_module
        # @return An instance of PersonalityModule

      def personality_module
        @personality_module
      end

        # The method to set the value to personality_module
        # @param personality_module [PersonalityModule] An instance of PersonalityModule

      def personality_module=(personality_module)
        if personality_module!=nil and !personality_module.is_a? PersonalityModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: personality_module EXPECTED TYPE: PersonalityModule', nil, nil)
        end
        @personality_module = personality_module
        @key_modified['personality_module'] = 1
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

        # The method to get the active
        # @return A Boolean value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Boolean] A Boolean

      def active=(active)
        if active!=nil and ! [true, false].include?active
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Boolean', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
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

        # The method to get the no_of_users
        # @return A Integer value

      def no_of_users
        @no_of_users
      end

        # The method to set the value to no_of_users
        # @param no_of_users [Integer] A Integer

      def no_of_users=(no_of_users)
        if no_of_users!=nil and !no_of_users.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: no_of_users EXPECTED TYPE: Integer', nil, nil)
        end
        @no_of_users = no_of_users
        @key_modified['no_of_users'] = 1
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

        # The method to get the modules
        # @return An instance of Array

      def modules
        @modules
      end

        # The method to set the value to modules
        # @param modules [Array] An instance of Array

      def modules=(modules)
        if modules!=nil and !modules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modules EXPECTED TYPE: Array', nil, nil)
        end
        @modules = modules
        @key_modified['modules'] = 1
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
