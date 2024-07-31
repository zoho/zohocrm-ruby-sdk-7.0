require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class QueryDetails
      include Util::Model

      # Creates an instance of QueryDetails
      def initialize
        @query_id = nil
        @criteria = nil
        @key_modified = Hash.new
      end

        # The method to get the query_id
        # @return A Integer value

      def query_id
        @query_id
      end

        # The method to set the value to query_id
        # @param query_id [Integer] A Integer

      def query_id=(query_id)
        if query_id!=nil and !query_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: query_id EXPECTED TYPE: Integer', nil, nil)
        end
        @query_id = query_id
        @key_modified['query_id'] = 1
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
