require_relative '../util/model'

module ZOHOCRMSDK
  module EmailRelatedRecords
    class Info
      include Util::Model

      # Creates an instance of Info
      def initialize
        @count = nil
        @next_index = nil
        @prev_index = nil
        @per_page = nil
        @more_records = nil
        @key_modified = Hash.new
      end

        # The method to get the count
        # @return A Integer value

      def count
        @count
      end

        # The method to set the value to count
        # @param count [Integer] A Integer

      def count=(count)
        if count!=nil and !count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: Integer', nil, nil)
        end
        @count = count
        @key_modified['count'] = 1
      end

        # The method to get the next_index
        # @return A String value

      def next_index
        @next_index
      end

        # The method to set the value to next_index
        # @param next_index [String] A String

      def next_index=(next_index)
        if next_index!=nil and !next_index.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: next_index EXPECTED TYPE: String', nil, nil)
        end
        @next_index = next_index
        @key_modified['next_index'] = 1
      end

        # The method to get the prev_index
        # @return A String value

      def prev_index
        @prev_index
      end

        # The method to set the value to prev_index
        # @param prev_index [String] A String

      def prev_index=(prev_index)
        if prev_index!=nil and !prev_index.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: prev_index EXPECTED TYPE: String', nil, nil)
        end
        @prev_index = prev_index
        @key_modified['prev_index'] = 1
      end

        # The method to get the per_page
        # @return A Integer value

      def per_page
        @per_page
      end

        # The method to set the value to per_page
        # @param per_page [Integer] A Integer

      def per_page=(per_page)
        if per_page!=nil and !per_page.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: per_page EXPECTED TYPE: Integer', nil, nil)
        end
        @per_page = per_page
        @key_modified['per_page'] = 1
      end

        # The method to get the more_records
        # @return A Boolean value

      def more_records
        @more_records
      end

        # The method to set the value to more_records
        # @param more_records [Boolean] A Boolean

      def more_records=(more_records)
        if more_records!=nil and ! [true, false].include?more_records
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: more_records EXPECTED TYPE: Boolean', nil, nil)
        end
        @more_records = more_records
        @key_modified['more_records'] = 1
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
