require_relative '../util/model'

module ZOHOCRMSDK
  module UsersTransferDelete
    class Transfer
      include Util::Model

      # Creates an instance of Transfer
      def initialize
        @records = nil
        @assignment = nil
        @criteria = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the records
        # @return A Boolean value

      def records
        @records
      end

        # The method to set the value to records
        # @param records [Boolean] A Boolean

      def records=(records)
        if records!=nil and ! [true, false].include?records
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: records EXPECTED TYPE: Boolean', nil, nil)
        end
        @records = records
        @key_modified['records'] = 1
      end

        # The method to get the assignment
        # @return A Boolean value

      def assignment
        @assignment
      end

        # The method to set the value to assignment
        # @param assignment [Boolean] A Boolean

      def assignment=(assignment)
        if assignment!=nil and ! [true, false].include?assignment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assignment EXPECTED TYPE: Boolean', nil, nil)
        end
        @assignment = assignment
        @key_modified['assignment'] = 1
      end

        # The method to get the criteria
        # @return A Boolean value

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Boolean] A Boolean

      def criteria=(criteria)
        if criteria!=nil and ! [true, false].include?criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Boolean', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
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
