require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Record
    class Territory
      include Util::Model

      # Creates an instance of Territory
      def initialize
        @assigned = nil
        @name = nil
        @id = nil
        @assigned_time = nil
        @assigned_by = nil
        @key_modified = Hash.new
      end

        # The method to get the assigned
        # @return A String value

      def assigned
        @assigned
      end

        # The method to set the value to assigned
        # @param assigned [String] A String

      def assigned=(assigned)
        if assigned!=nil and !assigned.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assigned EXPECTED TYPE: String', nil, nil)
        end
        @assigned = assigned
        @key_modified['$assigned'] = 1
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
        @key_modified['Name'] = 1
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

        # The method to get the assigned_time
        # @return An instance of DateTime

      def assigned_time
        @assigned_time
      end

        # The method to set the value to assigned_time
        # @param assigned_time [DateTime] An instance of DateTime

      def assigned_time=(assigned_time)
        if assigned_time!=nil and !assigned_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assigned_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @assigned_time = assigned_time
        @key_modified['$assigned_time'] = 1
      end

        # The method to get the assigned_by
        # @return An instance of Users::MinifiedUser

      def assigned_by
        @assigned_by
      end

        # The method to set the value to assigned_by
        # @param assigned_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def assigned_by=(assigned_by)
        if assigned_by!=nil and !assigned_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assigned_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @assigned_by = assigned_by
        @key_modified['$assigned_by'] = 1
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
