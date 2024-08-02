require_relative '../util/model'

module ZOHOCRMSDK
  module UserTypeUsers
    class Users
      include Util::Model

      # Creates an instance of Users
      def initialize
        @personality_id = nil
        @confirm = nil
        @status_reason__s = nil
        @invited_time = nil
        @module_1 = nil
        @name = nil
        @active = nil
        @email = nil
        @key_modified = Hash.new
      end

        # The method to get the personality_id
        # @return A Integer value

      def personality_id
        @personality_id
      end

        # The method to set the value to personality_id
        # @param personality_id [Integer] A Integer

      def personality_id=(personality_id)
        if personality_id!=nil and !personality_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: personality_id EXPECTED TYPE: Integer', nil, nil)
        end
        @personality_id = personality_id
        @key_modified['personality_id'] = 1
      end

        # The method to get the confirm
        # @return A Boolean value

      def confirm
        @confirm
      end

        # The method to set the value to confirm
        # @param confirm [Boolean] A Boolean

      def confirm=(confirm)
        if confirm!=nil and ! [true, false].include?confirm
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: confirm EXPECTED TYPE: Boolean', nil, nil)
        end
        @confirm = confirm
        @key_modified['confirm'] = 1
      end

        # The method to get the status_reason__s
        # @return A String value

      def status_reason__s
        @status_reason__s
      end

        # The method to set the value to status_reason__s
        # @param status_reason__s [String] A String

      def status_reason__s=(status_reason__s)
        if status_reason__s!=nil and !status_reason__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status_reason__s EXPECTED TYPE: String', nil, nil)
        end
        @status_reason__s = status_reason__s
        @key_modified['status_reason__s'] = 1
      end

        # The method to get the invited_time
        # @return An instance of DateTime

      def invited_time
        @invited_time
      end

        # The method to set the value to invited_time
        # @param invited_time [DateTime] An instance of DateTime

      def invited_time=(invited_time)
        if invited_time!=nil and !invited_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: invited_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @invited_time = invited_time
        @key_modified['invited_time'] = 1
      end

        # The method to get the module
        # @return A String value

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [String] A String

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
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

        # The method to get the active
        # @return A Boolean value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Boolean] A Boolean

      def active=(active)
        if active!=nil and ! [true, false].include?active
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Boolean', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
      end

        # The method to get the email
        # @return A String value

      def email
        @email
      end

        # The method to set the value to email
        # @param email [String] A String

      def email=(email)
        if email!=nil and !email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
        end
        @email = email
        @key_modified['email'] = 1
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
