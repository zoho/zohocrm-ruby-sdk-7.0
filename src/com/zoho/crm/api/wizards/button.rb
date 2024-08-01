require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Button
      include Util::Model

      # Creates an instance of Button
      def initialize
        @id = nil
        @sequence_number = nil
        @display_label = nil
        @criteria = nil
        @target_screen = nil
        @type = nil
        @message = nil
        @color = nil
        @shape = nil
        @background_color = nil
        @visibility = nil
        @resource = nil
        @transition = nil
        @category = nil
        @reference_id = nil
        @key_modified = Hash.new
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

        # The method to get the sequence_number
        # @return A Integer value

      def sequence_number
        @sequence_number
      end

        # The method to set the value to sequence_number
        # @param sequence_number [Integer] A Integer

      def sequence_number=(sequence_number)
        if sequence_number!=nil and !sequence_number.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: Integer', nil, nil)
        end
        @sequence_number = sequence_number
        @key_modified['sequence_number'] = 1
      end

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
      end

        # The method to get the criteria
        # @return An instance of Criteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Criteria] An instance of Criteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
      end

        # The method to get the target_screen
        # @return An instance of Screen

      def tarscreen
        @target_screen
      end

        # The method to set the value to target_screen
        # @param target_screen [Screen] An instance of Screen

      def tarscreen=(target_screen)
        if target_screen!=nil and !target_screen.is_a? Screen
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: target_screen EXPECTED TYPE: Screen', nil, nil)
        end
        @target_screen = target_screen
        @key_modified['target_screen'] = 1
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

        # The method to get the message
        # @return An instance of Message

      def message
        @message
      end

        # The method to set the value to message
        # @param message [Message] An instance of Message

      def message=(message)
        if message!=nil and !message.is_a? Message
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: message EXPECTED TYPE: Message', nil, nil)
        end
        @message = message
        @key_modified['message'] = 1
      end

        # The method to get the color
        # @return A String value

      def color
        @color
      end

        # The method to set the value to color
        # @param color [String] A String

      def color=(color)
        if color!=nil and !color.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: color EXPECTED TYPE: String', nil, nil)
        end
        @color = color
        @key_modified['color'] = 1
      end

        # The method to get the shape
        # @return A String value

      def shape
        @shape
      end

        # The method to set the value to shape
        # @param shape [String] A String

      def shape=(shape)
        if shape!=nil and !shape.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shape EXPECTED TYPE: String', nil, nil)
        end
        @shape = shape
        @key_modified['shape'] = 1
      end

        # The method to get the background_color
        # @return A String value

      def background_color
        @background_color
      end

        # The method to set the value to background_color
        # @param background_color [String] A String

      def background_color=(background_color)
        if background_color!=nil and !background_color.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: background_color EXPECTED TYPE: String', nil, nil)
        end
        @background_color = background_color
        @key_modified['background_color'] = 1
      end

        # The method to get the visibility
        # @return A String value

      def visibility
        @visibility
      end

        # The method to set the value to visibility
        # @param visibility [String] A String

      def visibility=(visibility)
        if visibility!=nil and !visibility.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visibility EXPECTED TYPE: String', nil, nil)
        end
        @visibility = visibility
        @key_modified['visibility'] = 1
      end

        # The method to get the resource
        # @return A lang::Object value

      def resource
        @resource
      end

        # The method to set the value to resource
        # @param resource [lang::Object] A lang::Object

      def resource=(resource)
        @resource = resource
        @key_modified['resource'] = 1
      end

        # The method to get the transition
        # @return An instance of Transition

      def transition
        @transition
      end

        # The method to set the value to transition
        # @param transition [Transition] An instance of Transition

      def transition=(transition)
        if transition!=nil and !transition.is_a? Transition
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transition EXPECTED TYPE: Transition', nil, nil)
        end
        @transition = transition
        @key_modified['transition'] = 1
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

        # The method to get the reference_id
        # @return A String value

      def reference_id
        @reference_id
      end

        # The method to set the value to reference_id
        # @param reference_id [String] A String

      def reference_id=(reference_id)
        if reference_id!=nil and !reference_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reference_id EXPECTED TYPE: String', nil, nil)
        end
        @reference_id = reference_id
        @key_modified['reference_id'] = 1
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
