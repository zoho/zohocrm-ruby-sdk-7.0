require_relative '../util/model'

module ZOHOCRMSDK
  module ShiftHours
    class Users
      include Util::Model

      # Creates an instance of Users
      def initialize
        @role = nil
        @name = nil
        @id = nil
        @email = nil
        @zuid = nil
        @effective_from = nil
        @key_modified = Hash.new
      end

        # The method to get the role
        # @return An instance of Role

      def role
        @role
      end

        # The method to set the value to role
        # @param role [Role] An instance of Role

      def role=(role)
        if role!=nil and !role.is_a? Role
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: role EXPECTED TYPE: Role', nil, nil)
        end
        @role = role
        @key_modified['role'] = 1
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

        # The method to get the email
        # @return A String value

      def email
        @email
      end

        # The method to set the value to email
        # @param email [String] A String

      def email=(email)
        if email!=nil and !email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
        end
        @email = email
        @key_modified['email'] = 1
      end

        # The method to get the zuid
        # @return A String value

      def zuid
        @zuid
      end

        # The method to set the value to zuid
        # @param zuid [String] A String

      def zuid=(zuid)
        if zuid!=nil and !zuid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zuid EXPECTED TYPE: String', nil, nil)
        end
        @zuid = zuid
        @key_modified['zuid'] = 1
      end

        # The method to get the effective_from
        # @return An instance of Date

      def effective_from
        @effective_from
      end

        # The method to set the value to effective_from
        # @param effective_from [Date] An instance of Date

      def effective_from=(effective_from)
        if effective_from!=nil and !effective_from.is_a? Date
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: effective_from EXPECTED TYPE: Date', nil, nil)
        end
        @effective_from = effective_from
        @key_modified['effective_from'] = 1
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
