require_relative '../util/model'

module ZOHOCRMSDK
  module EntityScores
    class EntityScores
      include Util::Model

      # Creates an instance of EntityScores
      def initialize
        @entity = nil
        @positive_score = nil
        @touch_point_score = nil
        @score = nil
        @negative_score = nil
        @touch_point_negative_score = nil
        @scoring_rule = nil
        @field_states = nil
        @id = nil
        @zia_visions = nil
        @touch_point_positive_score = nil
        @key_modified = Hash.new
      end

        # The method to get the entity
        # @return An instance of Entity

      def entity
        @entity
      end

        # The method to set the value to entity
        # @param entity [Entity] An instance of Entity

      def entity=(entity)
        if entity!=nil and !entity.is_a? Entity
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: entity EXPECTED TYPE: Entity', nil, nil)
        end
        @entity = entity
        @key_modified['Entity'] = 1
      end

        # The method to get the positive_score
        # @return A Integer value

      def positive_score
        @positive_score
      end

        # The method to set the value to positive_score
        # @param positive_score [Integer] A Integer

      def positive_score=(positive_score)
        if positive_score!=nil and !positive_score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: positive_score EXPECTED TYPE: Integer', nil, nil)
        end
        @positive_score = positive_score
        @key_modified['Positive_Score'] = 1
      end

        # The method to get the touch_point_score
        # @return A Integer value

      def touch_point_score
        @touch_point_score
      end

        # The method to set the value to touch_point_score
        # @param touch_point_score [Integer] A Integer

      def touch_point_score=(touch_point_score)
        if touch_point_score!=nil and !touch_point_score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: touch_point_score EXPECTED TYPE: Integer', nil, nil)
        end
        @touch_point_score = touch_point_score
        @key_modified['Touch_Point_Score'] = 1
      end

        # The method to get the score
        # @return A Integer value

      def score
        @score
      end

        # The method to set the value to score
        # @param score [Integer] A Integer

      def score=(score)
        if score!=nil and !score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: score EXPECTED TYPE: Integer', nil, nil)
        end
        @score = score
        @key_modified['Score'] = 1
      end

        # The method to get the negative_score
        # @return A Integer value

      def negative_score
        @negative_score
      end

        # The method to set the value to negative_score
        # @param negative_score [Integer] A Integer

      def negative_score=(negative_score)
        if negative_score!=nil and !negative_score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: negative_score EXPECTED TYPE: Integer', nil, nil)
        end
        @negative_score = negative_score
        @key_modified['Negative_Score'] = 1
      end

        # The method to get the touch_point_negative_score
        # @return A Integer value

      def touch_point_negative_score
        @touch_point_negative_score
      end

        # The method to set the value to touch_point_negative_score
        # @param touch_point_negative_score [Integer] A Integer

      def touch_point_negative_score=(touch_point_negative_score)
        if touch_point_negative_score!=nil and !touch_point_negative_score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: touch_point_negative_score EXPECTED TYPE: Integer', nil, nil)
        end
        @touch_point_negative_score = touch_point_negative_score
        @key_modified['Touch_Point_Negative_Score'] = 1
      end

        # The method to get the scoring_rule
        # @return An instance of ScoringRule

      def scoring_rule
        @scoring_rule
      end

        # The method to set the value to scoring_rule
        # @param scoring_rule [ScoringRule] An instance of ScoringRule

      def scoring_rule=(scoring_rule)
        if scoring_rule!=nil and !scoring_rule.is_a? ScoringRule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scoring_rule EXPECTED TYPE: ScoringRule', nil, nil)
        end
        @scoring_rule = scoring_rule
        @key_modified['Scoring_Rule'] = 1
      end

        # The method to get the field_states
        # @return An instance of Array

      def field_states
        @field_states
      end

        # The method to set the value to field_states
        # @param field_states [Array] An instance of Array

      def field_states=(field_states)
        if field_states!=nil and !field_states.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_states EXPECTED TYPE: Array', nil, nil)
        end
        @field_states = field_states
        @key_modified['$field_states'] = 1
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

        # The method to get the zia_visions
        # @return A Boolean value

      def zia_visions
        @zia_visions
      end

        # The method to set the value to zia_visions
        # @param zia_visions [Boolean] A Boolean

      def zia_visions=(zia_visions)
        if zia_visions!=nil and ! [true, false].include?zia_visions
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_visions EXPECTED TYPE: Boolean', nil, nil)
        end
        @zia_visions = zia_visions
        @key_modified['$zia_visions'] = 1
      end

        # The method to get the touch_point_positive_score
        # @return A Integer value

      def touch_point_positive_score
        @touch_point_positive_score
      end

        # The method to set the value to touch_point_positive_score
        # @param touch_point_positive_score [Integer] A Integer

      def touch_point_positive_score=(touch_point_positive_score)
        if touch_point_positive_score!=nil and !touch_point_positive_score.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: touch_point_positive_score EXPECTED TYPE: Integer', nil, nil)
        end
        @touch_point_positive_score = touch_point_positive_score
        @key_modified['Touch_Point_Positive_Score'] = 1
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
