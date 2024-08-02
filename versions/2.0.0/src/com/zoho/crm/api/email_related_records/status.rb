require_relative '../util/model'

module ZOHOCRMSDK
  module EmailRelatedRecords
    class Status
      include Util::Model

      # Creates an instance of Status
      def initialize
        @first_open = nil
        @count = nil
        @type = nil
        @last_open = nil
        @bounced_time = nil
        @bounced_reason = nil
        @category = nil
        @sub_category = nil
        @key_modified = Hash.new
      end

        # The method to get the first_open
        # @return An instance of DateTime

      def first_open
        @first_open
      end

        # The method to set the value to first_open
        # @param first_open [DateTime] An instance of DateTime

      def first_open=(first_open)
        if first_open!=nil and !first_open.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: first_open EXPECTED TYPE: DateTime', nil, nil)
        end
        @first_open = first_open
        @key_modified['first_open'] = 1
      end

        # The method to get the count
        # @return A String value

      def count
        @count
      end

        # The method to set the value to count
        # @param count [String] A String

      def count=(count)
        if count!=nil and !count.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: String', nil, nil)
        end
        @count = count
        @key_modified['count'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the last_open
        # @return An instance of DateTime

      def last_open
        @last_open
      end

        # The method to set the value to last_open
        # @param last_open [DateTime] An instance of DateTime

      def last_open=(last_open)
        if last_open!=nil and !last_open.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_open EXPECTED TYPE: DateTime', nil, nil)
        end
        @last_open = last_open
        @key_modified['last_open'] = 1
      end

        # The method to get the bounced_time
        # @return An instance of DateTime

      def bounced_time
        @bounced_time
      end

        # The method to set the value to bounced_time
        # @param bounced_time [DateTime] An instance of DateTime

      def bounced_time=(bounced_time)
        if bounced_time!=nil and !bounced_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bounced_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @bounced_time = bounced_time
        @key_modified['bounced_time'] = 1
      end

        # The method to get the bounced_reason
        # @return A String value

      def bounced_reason
        @bounced_reason
      end

        # The method to set the value to bounced_reason
        # @param bounced_reason [String] A String

      def bounced_reason=(bounced_reason)
        if bounced_reason!=nil and !bounced_reason.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bounced_reason EXPECTED TYPE: String', nil, nil)
        end
        @bounced_reason = bounced_reason
        @key_modified['bounced_reason'] = 1
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

        # The method to get the sub_category
        # @return A String value

      def sub_category
        @sub_category
      end

        # The method to set the value to sub_category
        # @param sub_category [String] A String

      def sub_category=(sub_category)
        if sub_category!=nil and !sub_category.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sub_category EXPECTED TYPE: String', nil, nil)
        end
        @sub_category = sub_category
        @key_modified['sub_category'] = 1
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
