require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class Assign
      include Util::Model

      # Creates an instance of Assign
      def initialize
        @feature = nil
        @related_entity_id = nil
        @page = nil
        @per_page = nil
        @id = nil
        @filters = nil
        @key_modified = Hash.new
      end

        # The method to get the feature
        # @return An instance of Util::Choice

      def feature
        @feature
      end

        # The method to set the value to feature
        # @param feature [Util::Choice] An instance of Util::Choice

      def feature=(feature)
        if feature!=nil and !feature.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feature EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @feature = feature
        @key_modified['feature'] = 1
      end

        # The method to get the related_entity_id
        # @return A Integer value

      def related_entity_id
        @related_entity_id
      end

        # The method to set the value to related_entity_id
        # @param related_entity_id [Integer] A Integer

      def related_entity_id=(related_entity_id)
        if related_entity_id!=nil and !related_entity_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_entity_id EXPECTED TYPE: Integer', nil, nil)
        end
        @related_entity_id = related_entity_id
        @key_modified['related_entity_id'] = 1
      end

        # The method to get the page
        # @return A Integer value

      def page
        @page
      end

        # The method to set the value to page
        # @param page [Integer] A Integer

      def page=(page)
        if page!=nil and !page.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: page EXPECTED TYPE: Integer', nil, nil)
        end
        @page = page
        @key_modified['page'] = 1
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

        # The method to get the filters
        # @return An instance of Criteria

      def filters
        @filters
      end

        # The method to set the value to filters
        # @param filters [Criteria] An instance of Criteria

      def filters=(filters)
        if filters!=nil and !filters.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filters EXPECTED TYPE: Criteria', nil, nil)
        end
        @filters = filters
        @key_modified['filters'] = 1
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
