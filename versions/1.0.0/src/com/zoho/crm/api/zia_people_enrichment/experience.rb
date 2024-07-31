require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class Experience
      include Util::Model

      # Creates an instance of Experience
      def initialize
        @end_date = nil
        @company_name = nil
        @title = nil
        @start_date = nil
        @primary = nil
        @key_modified = Hash.new
      end

        # The method to get the end_date
        # @return A String value

      def end_date
        @end_date
      end

        # The method to set the value to end_date
        # @param end_date [String] A String

      def end_date=(end_date)
        if end_date!=nil and !end_date.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: end_date EXPECTED TYPE: String', nil, nil)
        end
        @end_date = end_date
        @key_modified['end_date'] = 1
      end

        # The method to get the company_name
        # @return A String value

      def company_name
        @company_name
      end

        # The method to set the value to company_name
        # @param company_name [String] A String

      def company_name=(company_name)
        if company_name!=nil and !company_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: company_name EXPECTED TYPE: String', nil, nil)
        end
        @company_name = company_name
        @key_modified['company_name'] = 1
      end

        # The method to get the title
        # @return A String value

      def title
        @title
      end

        # The method to set the value to title
        # @param title [String] A String

      def title=(title)
        if title!=nil and !title.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: title EXPECTED TYPE: String', nil, nil)
        end
        @title = title
        @key_modified['title'] = 1
      end

        # The method to get the start_date
        # @return A String value

      def start_date
        @start_date
      end

        # The method to set the value to start_date
        # @param start_date [String] A String

      def start_date=(start_date)
        if start_date!=nil and !start_date.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: start_date EXPECTED TYPE: String', nil, nil)
        end
        @start_date = start_date
        @key_modified['start_date'] = 1
      end

        # The method to get the primary
        # @return A Boolean value

      def primary
        @primary
      end

        # The method to set the value to primary
        # @param primary [Boolean] A Boolean

      def primary=(primary)
        if primary!=nil and ! [true, false].include?primary
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary EXPECTED TYPE: Boolean', nil, nil)
        end
        @primary = primary
        @key_modified['primary'] = 1
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
