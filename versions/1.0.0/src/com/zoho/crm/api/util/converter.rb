require 'base64'
require_relative 'constants'
require_relative 'utility'

module ZOHOCRMSDK
  module Util
    class Converter
      attr_accessor :common_api_handler
      # This method is to process the API response.
      # @param response_json [Object] A Object containing the API response contents or response.
      # @param class_path [String] A String containing the expected method return type.
      def get_response(response_json, class_path); end

      # This abstract method is to construct the API request.
      # @param request_instance [Object] An Object containing the class instance.
      # @param class_path [String] A String containing the expected method return type.
      # @param instance_no [Integer] An Integer containing the class instance list number.
      # @return An Object representing the API request body object.
      # @raise Exception
      def form_request(request_instance, class_path, instance_no, member_details = nil); end

      # This abstract method is to process the API response.
      # @param response [Object] A Object containing the HttpResponse class instance.
      # @param pack [String] A String containing the expected method return type.
      # @return An Object representing the POJO class instance.
      # @raise Exception
      def get_wrapper_response(response, pack); end

      # This abstract method is to construct the API request body.
      # @param request [Object] A HttpEntityEnclosingRequestBase class instance.
      # @param request_object A Object containing the API request body object.
      # @raise Exception
      def append_to_request(request, request_object); end

      # Creates a Converter class instance with the CommonAPIHandler class instance.
      # @param common_api_handler A CommonAPIHandler class instance.
      def initialize(common_api_handler)
        @common_api_handler = common_api_handler
      end

      # This method is to validate if the input values satisfy the constraints for the respective fields.
      # @param class_name [String] A String containing the class name.
      # @param member_name [String] A String containing the member name.
      # @param key_details A Hash containing the key JSON details.
      # @param value [Object[ An Object containing the key value.
      # @param unique_values_map A Hash containing the construct objects.
      # @param instance_number [Integer] An Integer containing the POJO class instance list number.
      # @return A Boolean representing the key value is expected pattern, unique, length, and values.
      # @raise SDKException
      def value_checker(class_name, member_name, key_details, value, unique_values_map, instance_number)
        error = {}

        name = key_details[Constants::NAME]
        type = key_details[Constants::TYPE]

        var_type = nil
        check = true

        unless value.nil?
          var_type = value.class.name
          if key_details.key? Constants::INTERFACE and key_details[Constants::INTERFACE] == true
            json_details = Initializer.json_details
            interface_details = json_details[key_details[Constants::STRUCTURE_NAME]]
            classes = interface_details[Constants::CLASSES]
            check = false
            classes.each do |each_class_name|
              class_name_lower = each_class_name.to_s.downcase
              value_class_name = Util::Utility.path_to_package(value.class.name).downcase
    
              if class_name_lower.downcase == value_class_name
                check = true
                break
              end
            end
          else
            var_type = value.class.name
          end
        end
    
        if Constants::DATA_TYPE.key? type 
          if value.is_a? Array
            if key_details.key? Constants::STRUCTURE_NAME
              structure_name = key_details[Constants::STRUCTURE_NAME]
              index = 0
              value.each do |data|
                class_name = data.class.name
                unless structure_name.downcase == Util::Utility.path_to_package(class_name).downcase
                  instance_number = index
                  type = Constants::LIST_NAMESPACE + '(' + structure_name + ')'
                  var_type = Constants::LIST_NAMESPACE + '(' + class_name + ')'
                  check = false
                  break
                end
                index += 1
              end
            elsif key_details.key? Constants::SUB_TYPE
              index = 0
              sub_type1 = key_details[Constants::SUB_TYPE]
              sub_type = sub_type1[Constants::TYPE]
              if sub_type.downcase == Constants::OBJECT.downcase
                check = true
              else
                value.each do |each_instance|
                  unless Util::Utility.check_data_type(each_instance, sub_type)
                    check = false
                    instance_number = index
                    if Constants::DATA_TYPE.key? sub_type
                      sub_type = Constants::DATA_TYPE[sub_type].downcase
                    end
                    type = Constants::LIST_NAMESPACE + '[' + sub_type + ']'
                    var_type = Constants::LIST_NAMESPACE + '[' + each_instance.class.name + ']'
                    break
                  end
                  index = index + 1
                end
              end
            end
          elsif !value.nil?
            check = Util::Utility.check_data_type(value, type)
          end
        elsif !value.nil? && type.downcase != Constants::OBJECT.downcase
          if type == 'TimeZone'
            check = true
          else
            if type.downcase != Util::Utility.path_to_package(var_type).downcase
              check = false
            end
            if !check
              if Object.const_get(var_type).new.is_a? Object.const_get(Util::Utility.class_to_load(type))
                check = true
              end
            end
          end
        end
        if !check
          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::ERROR_HASH_FIELD] = member_name

          error[Constants::INDEX] = instance_number

          error[Constants::ERROR_HASH_EXPECTED_TYPE] = type

          error[Constants::GIVEN_TYPE] = var_type

          raise SDKException.new(Constants::TYPE_ERROR, nil, error, nil)
        end

        class_name = if class_name.include? Constants::DOUBLE_COLON
                      class_name.split(Constants::DOUBLE_COLON)[1]
                    else
                      class_name.split(Constants::DOT)[5]
                    end

        if key_details.key?(Constants::VALUES) && (!key_details.key?(Constants::PICKLIST) || (key_details[Constants::PICKLIST] && Initializer.get_initializer.sdk_config.pick_list_validation))
          value = value.value if value.is_a? Util::Choice

          values_ja = key_details[Constants::VALUES]

          if value.is_a? Array
            value_1 = value
            value_1.each do |value_2|
              if value_2.is_a? Util::Choice
                choice = value_2
                value_2 = choice.value
              end
              unless values_ja.include? value_2
                unless instance_number.nil?
                  error[Constants::INDEX] = instance_number
                end

                error[Constants::ERROR_HASH_CLASS] = class_name

                error[Constants::GIVEN_VALUE] = value

                error[Constants::ERROR_HASH_FIELD] = member_name

                error[Constants::ACCEPTED_VALUES] = values_ja

                raise SDKException.new(Constants::UNACCEPTED_VALUES_ERROR, nil, error, nil)
              end
            end
          else
            if value.is_a? Util::Choice
              choice = value
              value = choice.value
            end
            unless values_ja.include? value

              unless instance_number.nil?
                error[Constants::INDEX] = instance_number
              end

              error[Constants::ERROR_HASH_CLASS] = class_name

              error[Constants::GIVEN_VALUE] = value

              error[Constants::ERROR_HASH_FIELD] = member_name

              error[Constants::ACCEPTED_VALUES] = values_ja

              raise SDKException.new(Constants::UNACCEPTED_VALUES_ERROR, nil, error, nil)
            end
          end
        end

        if key_details.key?(Constants::MIN_LENGTH) || key_details.key?(Constants::MAX_LENGTH)
          count = value.to_s.length
          if value.is_a? Array
            count = value.length
          end
          if key_details.key?(Constants::MIN_LENGTH) && count < key_details[Constants::MIN_LENGTH]
            error[Constants::ERROR_HASH_CLASS] = class_name

            error[Constants::GIVEN_LENGTH] = count

            error[Constants::ERROR_HASH_FIELD] = member_name

            error[Constants::ERROR_HASH_MINIMUM_LENGTH] = key_details[Constants::MIN_LENGTH]

            raise SDKException.new(Constants::MINIMUM_LENGTH_ERROR, nil, error, nil)

          end

          if key_details.key?(Constants::MAX_LENGTH) && count > key_details[Constants::MAX_LENGTH]
            error[Constants::ERROR_HASH_CLASS] = class_name

            error[Constants::ERROR_HASH_FIELD] = member_name

            error[Constants::GIVEN_LENGTH] = count

            error[Constants::ERROR_HASH_MAXIMUM_LENGTH] = key_details[Constants::MAX_LENGTH]

            raise SDKException.new(Constants::MAXIMUM_LENGTH_ERROR, nil, error, nil)

          end
        end

        if key_details.key? Constants::UNIQUE

          unique_values_map[name] = [] unless unique_values_map.key? name

          if unique_values_map[name].include? value
            error[Constants::FIRST_INDEX] = unique_values_map[name].find_index(value) + 1

            error[Constants::NEXT_INDEX] = instance_number

            error[Constants::ERROR_HASH_CLASS] = class_name

            error[Constants::ERROR_HASH_FIELD] = member_name

            raise SDKException.new(Constants::UNIQUE_KEY_ERROR, nil, error, nil)

          else
            unique_values_map[name].push(value)
          end
        end

        true
      end

      # This method to get the module field JSON details file path.
      # @return A String representing the module field JSON details file path.
      def get_record_json_file_path
        initializer = Initializer.get_initializer
        token = initializer.token
        access_token = ''
        refresh_token = ''
        token_key = ''
        if token.is_a? Authenticator::OAuthToken
          oauth_token = token
          if !oauth_token.user_signature.nil?
            token_key = oauth_token.user_signature.name
          else
            refresh_token = oauth_token.refresh_token
            if !refresh_token.nil? && refresh_token.length > 0
              token_key = refresh_token.match(/.{32}$/).to_s
            else
              access_token = oauth_token.access_token
              if !access_token.nil? && access_token.length > 0
                token_key = access_token.match(/.{32}$/).to_s
              end
            end
          end
        end
        file_name = initializer.environment.url
        if !token_key.nil? && token_key.length > 0
          file_name += token_key
        end
        bytes = file_name.force_encoding('utf-8').bytes
        str = Base64.encode64(bytes.pack("C*"))
        str = str.chomp
        str.concat(".json")
      end
    end
  end
end
