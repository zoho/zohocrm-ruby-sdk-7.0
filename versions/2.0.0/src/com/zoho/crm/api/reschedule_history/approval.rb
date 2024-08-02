require_relative '../util/model'

module ZOHOCRMSDK
  module RescheduleHistory
    class Approval
      include Util::Model

      # Creates an instance of Approval
      def initialize
        @delegate = nil
        @approve = nil
        @reject = nil
        @resubmit = nil
        @key_modified = Hash.new
      end

        # The method to get the delegate
        # @return A Boolean value

      def delegate
        @delegate
      end

        # The method to set the value to delegate
        # @param delegate [Boolean] A Boolean

      def delegate=(delegate)
        if delegate!=nil and ! [true, false].include?delegate
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delegate EXPECTED TYPE: Boolean', nil, nil)
        end
        @delegate = delegate
        @key_modified['delegate'] = 1
      end

        # The method to get the approve
        # @return A Boolean value

      def approve
        @approve
      end

        # The method to set the value to approve
        # @param approve [Boolean] A Boolean

      def approve=(approve)
        if approve!=nil and ! [true, false].include?approve
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: approve EXPECTED TYPE: Boolean', nil, nil)
        end
        @approve = approve
        @key_modified['approve'] = 1
      end

        # The method to get the reject
        # @return A Boolean value

      def reject
        @reject
      end

        # The method to set the value to reject
        # @param reject [Boolean] A Boolean

      def reject=(reject)
        if reject!=nil and ! [true, false].include?reject
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reject EXPECTED TYPE: Boolean', nil, nil)
        end
        @reject = reject
        @key_modified['reject'] = 1
      end

        # The method to get the resubmit
        # @return A Boolean value

      def resubmit
        @resubmit
      end

        # The method to set the value to resubmit
        # @param resubmit [Boolean] A Boolean

      def resubmit=(resubmit)
        if resubmit!=nil and ! [true, false].include?resubmit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resubmit EXPECTED TYPE: Boolean', nil, nil)
        end
        @resubmit = resubmit
        @key_modified['resubmit'] = 1
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
