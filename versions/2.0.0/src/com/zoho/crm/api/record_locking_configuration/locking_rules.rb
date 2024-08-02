require_relative '../util/model'

module ZOHOCRMSDK
  module RecordLockingConfiguration
    class LockingRules
      include Util::Model

      # Creates an instance of LockingRules
      def initialize
        @name = nil
        @id = nil
        @lock_existing_records = nil
        @criteria = nil
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

        # The method to get the lock_existing_records
        # @return A Boolean value

      def lock_existing_records
        @lock_existing_records
      end

        # The method to set the value to lock_existing_records
        # @param lock_existing_records [Boolean] A Boolean

      def lock_existing_records=(lock_existing_records)
        if lock_existing_records!=nil and ! [true, false].include?lock_existing_records
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_existing_records EXPECTED TYPE: Boolean', nil, nil)
        end
        @lock_existing_records = lock_existing_records
        @key_modified['lock_existing_records'] = 1
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
