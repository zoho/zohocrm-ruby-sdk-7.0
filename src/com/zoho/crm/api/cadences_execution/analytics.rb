require_relative '../util/model'

module ZOHOCRMSDK
  module CadencesExecution
    class Analytics
      include Util::Model

      # Creates an instance of Analytics
      def initialize
        @analytics = nil
        @parent_follow_up = nil
        @action = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the analytics
        # @return An instance of Hash

      def analytics
        @analytics
      end

        # The method to set the value to analytics
        # @param analytics [Hash] An instance of Hash

      def analytics=(analytics)
        if analytics!=nil and !analytics.is_a? Hash
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: analytics EXPECTED TYPE: Hash', nil, nil)
        end
        @analytics = analytics
        @key_modified['analytics'] = 1
      end

        # The method to get the parent_follow_up
        # @return An instance of ParentFollowUp

      def parent_follow_up
        @parent_follow_up
      end

        # The method to set the value to parent_follow_up
        # @param parent_follow_up [ParentFollowUp] An instance of ParentFollowUp

      def parent_follow_up=(parent_follow_up)
        if parent_follow_up!=nil and !parent_follow_up.is_a? ParentFollowUp
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent_follow_up EXPECTED TYPE: ParentFollowUp', nil, nil)
        end
        @parent_follow_up = parent_follow_up
        @key_modified['parent_follow_up'] = 1
      end

        # The method to get the action
        # @return An instance of Action

      def action
        @action
      end

        # The method to set the value to action
        # @param action [Action] An instance of Action

      def action=(action)
        if action!=nil and !action.is_a? Action
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action EXPECTED TYPE: Action', nil, nil)
        end
        @action = action
        @key_modified['action'] = 1
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
