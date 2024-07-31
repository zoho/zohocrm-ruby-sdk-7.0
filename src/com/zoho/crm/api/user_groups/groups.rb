require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class Groups
      include Util::Model

      # Creates an instance of Groups
      def initialize
        @created_by = nil
        @modified_by = nil
        @modified_time = nil
        @created_time = nil
        @description = nil
        @id = nil
        @name = nil
        @sources_count = nil
        @sources = nil
        @key_modified = Hash.new
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

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
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

        # The method to get the sources_count
        # @return An instance of SourcesCount

      def sources_count
        @sources_count
      end

        # The method to set the value to sources_count
        # @param sources_count [SourcesCount] An instance of SourcesCount

      def sources_count=(sources_count)
        if sources_count!=nil and !sources_count.is_a? SourcesCount
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sources_count EXPECTED TYPE: SourcesCount', nil, nil)
        end
        @sources_count = sources_count
        @key_modified['sources_count'] = 1
      end

        # The method to get the sources
        # @return An instance of Array

      def sources
        @sources
      end

        # The method to set the value to sources
        # @param sources [Array] An instance of Array

      def sources=(sources)
        if sources!=nil and !sources.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sources EXPECTED TYPE: Array', nil, nil)
        end
        @sources = sources
        @key_modified['sources'] = 1
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
