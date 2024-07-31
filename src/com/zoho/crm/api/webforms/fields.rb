require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class Fields
      include Util::Model

      # Creates an instance of Fields
      def initialize
        @layout = nil
        @help = nil
        @field = nil
        @module_1 = nil
        @secret_key = nil
        @recaptcha_label = nil
        @hidden = nil
        @site_key = nil
        @advanced = nil
        @api_name = nil
        @field_label = nil
        @theme = nil
        @id = nil
        @required = nil
        @field_name = nil
        @date_format = nil
        @key_modified = Hash.new
      end

        # The method to get the layout
        # @return An instance of Layout

      def layout
        @layout
      end

        # The method to set the value to layout
        # @param layout [Layout] An instance of Layout

      def layout=(layout)
        if layout!=nil and !layout.is_a? Layout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout EXPECTED TYPE: Layout', nil, nil)
        end
        @layout = layout
        @key_modified['layout'] = 1
      end

        # The method to get the help
        # @return A String value

      def help
        @help
      end

        # The method to set the value to help
        # @param help [String] A String

      def help=(help)
        if help!=nil and !help.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: help EXPECTED TYPE: String', nil, nil)
        end
        @help = help
        @key_modified['help'] = 1
      end

        # The method to get the field
        # @return An instance of Fields

      def field
        @field
      end

        # The method to set the value to field
        # @param field [Fields] An instance of Fields

      def field=(field)
        if field!=nil and !field.is_a? Fields
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: Fields', nil, nil)
        end
        @field = field
        @key_modified['field'] = 1
      end

        # The method to get the module
        # @return An instance of Module

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Module] An instance of Module

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Module
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Module', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the secret_key
        # @return A String value

      def secret_key
        @secret_key
      end

        # The method to set the value to secret_key
        # @param secret_key [String] A String

      def secret_key=(secret_key)
        if secret_key!=nil and !secret_key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: secret_key EXPECTED TYPE: String', nil, nil)
        end
        @secret_key = secret_key
        @key_modified['secret_key'] = 1
      end

        # The method to get the recaptcha_label
        # @return A String value

      def recaptcha_label
        @recaptcha_label
      end

        # The method to set the value to recaptcha_label
        # @param recaptcha_label [String] A String

      def recaptcha_label=(recaptcha_label)
        if recaptcha_label!=nil and !recaptcha_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: recaptcha_label EXPECTED TYPE: String', nil, nil)
        end
        @recaptcha_label = recaptcha_label
        @key_modified['recaptcha_label'] = 1
      end

        # The method to get the hidden
        # @return A Boolean value

      def hidden
        @hidden
      end

        # The method to set the value to hidden
        # @param hidden [Boolean] A Boolean

      def hidden=(hidden)
        if hidden!=nil and ! [true, false].include?hidden
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: hidden EXPECTED TYPE: Boolean', nil, nil)
        end
        @hidden = hidden
        @key_modified['hidden'] = 1
      end

        # The method to get the site_key
        # @return A String value

      def site_key
        @site_key
      end

        # The method to set the value to site_key
        # @param site_key [String] A String

      def site_key=(site_key)
        if site_key!=nil and !site_key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: site_key EXPECTED TYPE: String', nil, nil)
        end
        @site_key = site_key
        @key_modified['site_key'] = 1
      end

        # The method to get the advanced
        # @return A Boolean value

      def advanced
        @advanced
      end

        # The method to set the value to advanced
        # @param advanced [Boolean] A Boolean

      def advanced=(advanced)
        if advanced!=nil and ! [true, false].include?advanced
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: advanced EXPECTED TYPE: Boolean', nil, nil)
        end
        @advanced = advanced
        @key_modified['advanced'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the field_label
        # @return A String value

      def field_label
        @field_label
      end

        # The method to set the value to field_label
        # @param field_label [String] A String

      def field_label=(field_label)
        if field_label!=nil and !field_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_label EXPECTED TYPE: String', nil, nil)
        end
        @field_label = field_label
        @key_modified['field_label'] = 1
      end

        # The method to get the theme
        # @return A String value

      def theme
        @theme
      end

        # The method to set the value to theme
        # @param theme [String] A String

      def theme=(theme)
        if theme!=nil and !theme.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: theme EXPECTED TYPE: String', nil, nil)
        end
        @theme = theme
        @key_modified['theme'] = 1
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

        # The method to get the required
        # @return A Boolean value

      def required
        @required
      end

        # The method to set the value to required
        # @param required [Boolean] A Boolean

      def required=(required)
        if required!=nil and ! [true, false].include?required
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: required EXPECTED TYPE: Boolean', nil, nil)
        end
        @required = required
        @key_modified['required'] = 1
      end

        # The method to get the field_name
        # @return A String value

      def field_name
        @field_name
      end

        # The method to set the value to field_name
        # @param field_name [String] A String

      def field_name=(field_name)
        if field_name!=nil and !field_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_name EXPECTED TYPE: String', nil, nil)
        end
        @field_name = field_name
        @key_modified['field_name'] = 1
      end

        # The method to get the date_format
        # @return A String value

      def date_format
        @date_format
      end

        # The method to set the value to date_format
        # @param date_format [String] A String

      def date_format=(date_format)
        if date_format!=nil and !date_format.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: date_format EXPECTED TYPE: String', nil, nil)
        end
        @date_format = date_format
        @key_modified['date_format'] = 1
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
