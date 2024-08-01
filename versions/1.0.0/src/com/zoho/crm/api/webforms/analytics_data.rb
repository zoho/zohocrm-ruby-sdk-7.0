require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class AnalyticsData
      include Util::Model

      # Creates an instance of AnalyticsData
      def initialize
        @iframe_url_tracking_code = nil
        @url_analytics_enabled = nil
        @analytics_enabled = nil
        @analytics_enabled_time = nil
        @tracking_code = nil
        @key_modified = Hash.new
      end

        # The method to get the iframe_url_tracking_code
        # @return A String value

      def iframe_url_tracking_code
        @iframe_url_tracking_code
      end

        # The method to set the value to iframe_url_tracking_code
        # @param iframe_url_tracking_code [String] A String

      def iframe_url_tracking_code=(iframe_url_tracking_code)
        if iframe_url_tracking_code!=nil and !iframe_url_tracking_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iframe_url_tracking_code EXPECTED TYPE: String', nil, nil)
        end
        @iframe_url_tracking_code = iframe_url_tracking_code
        @key_modified['iframe_url_tracking_code'] = 1
      end

        # The method to get the url_analytics_enabled
        # @return A Boolean value

      def url_analytics_enabled
        @url_analytics_enabled
      end

        # The method to set the value to url_analytics_enabled
        # @param url_analytics_enabled [Boolean] A Boolean

      def url_analytics_enabled=(url_analytics_enabled)
        if url_analytics_enabled!=nil and ! [true, false].include?url_analytics_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: url_analytics_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @url_analytics_enabled = url_analytics_enabled
        @key_modified['url_analytics_enabled'] = 1
      end

        # The method to get the analytics_enabled
        # @return A Boolean value

      def analytics_enabled
        @analytics_enabled
      end

        # The method to set the value to analytics_enabled
        # @param analytics_enabled [Boolean] A Boolean

      def analytics_enabled=(analytics_enabled)
        if analytics_enabled!=nil and ! [true, false].include?analytics_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: analytics_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @analytics_enabled = analytics_enabled
        @key_modified['analytics_enabled'] = 1
      end

        # The method to get the analytics_enabled_time
        # @return An instance of DateTime

      def analytics_enabled_time
        @analytics_enabled_time
      end

        # The method to set the value to analytics_enabled_time
        # @param analytics_enabled_time [DateTime] An instance of DateTime

      def analytics_enabled_time=(analytics_enabled_time)
        if analytics_enabled_time!=nil and !analytics_enabled_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: analytics_enabled_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @analytics_enabled_time = analytics_enabled_time
        @key_modified['analytics_enabled_time'] = 1
      end

        # The method to get the tracking_code
        # @return A String value

      def tracking_code
        @tracking_code
      end

        # The method to set the value to tracking_code
        # @param tracking_code [String] A String

      def tracking_code=(tracking_code)
        if tracking_code!=nil and !tracking_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tracking_code EXPECTED TYPE: String', nil, nil)
        end
        @tracking_code = tracking_code
        @key_modified['tracking_code'] = 1
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
