require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class RollupSummary
      include Util::Model

      # Creates an instance of RollupSummary
      def initialize
        @return_type = nil
        @expression = nil
        @based_on_module = nil
        @related_list = nil
        @rollup_based_on = nil
        @key_modified = Hash.new
      end

        # The method to get the return_type
        # @return A String value

      def return_type
        @return_type
      end

        # The method to set the value to return_type
        # @param return_type [String] A String

      def return_type=(return_type)
        if return_type!=nil and !return_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: return_type EXPECTED TYPE: String', nil, nil)
        end
        @return_type = return_type
        @key_modified['return_type'] = 1
      end

        # The method to get the expression
        # @return An instance of Expression

      def expression
        @expression
      end

        # The method to set the value to expression
        # @param expression [Expression] An instance of Expression

      def expression=(expression)
        if expression!=nil and !expression.is_a? Expression
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: expression EXPECTED TYPE: Expression', nil, nil)
        end
        @expression = expression
        @key_modified['expression'] = 1
      end

        # The method to get the based_on_module
        # @return An instance of MinifiedField

      def based_on_module
        @based_on_module
      end

        # The method to set the value to based_on_module
        # @param based_on_module [MinifiedField] An instance of MinifiedField

      def based_on_module=(based_on_module)
        if based_on_module!=nil and !based_on_module.is_a? MinifiedField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: based_on_module EXPECTED TYPE: MinifiedField', nil, nil)
        end
        @based_on_module = based_on_module
        @key_modified['based_on_module'] = 1
      end

        # The method to get the related_list
        # @return An instance of MinifiedField

      def related_list
        @related_list
      end

        # The method to set the value to related_list
        # @param related_list [MinifiedField] An instance of MinifiedField

      def related_list=(related_list)
        if related_list!=nil and !related_list.is_a? MinifiedField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_list EXPECTED TYPE: MinifiedField', nil, nil)
        end
        @related_list = related_list
        @key_modified['related_list'] = 1
      end

        # The method to get the rollup_based_on
        # @return A String value

      def rollup_based_on
        @rollup_based_on
      end

        # The method to set the value to rollup_based_on
        # @param rollup_based_on [String] A String

      def rollup_based_on=(rollup_based_on)
        if rollup_based_on!=nil and !rollup_based_on.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rollup_based_on EXPECTED TYPE: String', nil, nil)
        end
        @rollup_based_on = rollup_based_on
        @key_modified['rollup_based_on'] = 1
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
