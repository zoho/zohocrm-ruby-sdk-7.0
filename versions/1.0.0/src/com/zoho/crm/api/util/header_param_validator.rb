module ZOHOCRMSDK
  module Util
    class HeaderParamValidator
      def validate(name, class_name, value)
        json_details = get_json_details
        structure_name = class_name
        if class_name.include? Constants::DOT
          split_names = class_name.split(Constants::DOT)
          structure_name = ''
          (0..split_names.length - 2).each do |i|
            changed_class_name = ''
            camel_case_split = (split_names[i].to_s.split(/([[:upper:]][[:lower:]]+)/)).delete_if(&:empty?)
            camel_case_split.each_with_index do |each_name, j|
              changed_class_name += Constants::UNDERSCORE if j.positive?
              changed_class_name += each_name.to_s.downcase
            end
            structure_name += changed_class_name + Constants::DOT
          end
          structure_name += split_names[split_names.length - 1]
        end
        type_detail = []
        type_detail = get_key_json_details(name, json_details[structure_name]) if json_details.key? structure_name
        unless type_detail.empty?
          type = type_detail[Constants::TYPE]
          unless Utility.check_data_type(value, type)
            details_jo = {}
            details_jo[Constants::HEADER_OR_PARAM_NAME] = name
            details_jo[Constants::ERROR_HASH_CLASS] = class_name
            details_jo[Constants::ERROR_HASH_EXPECTED_TYPE] = type
            raise SDKException.new(Constants::TYPE_ERROR, nil, details_jo, nil)
          end
          if type_detail.include? Constants::STRUCTURE_NAME
            return JSON.dump(JSONConverter.new(Handler::CommonAPIHandler.new).form_request(value, type_detail[Constants::TYPE], nil, nil))
          end
          return parse_data(value, type_detail[Constants::TYPE])
        end
        value
      end

      def parse_data(value, type)
        if type == Constants::MAP_NAMESPACE
          json_object = {}
          request_object = value
          unless request_object.empty?
            request_object.each do |key, field_value|
              json_object[key] = parse_data(field_value, type)
            end
          end
          json_object
        elsif type == Constants::LIST_NAMESPACE
          json_array = []
          request_objects = value
          unless request_objects.empty?
            responses.each do |request_object|
              values.push(parse_data(request_object, type))
            end
          end
          json_array
        elsif type.downcase == Constants::CHOICE_NAMESPACE.downcase
          value.value
        else
          DataTypeConverter.post_convert(value, type)
        end
      end

      def get_json_details
        json_details = Initializer.json_details
        if json_details.nil?
          json_details = JSON.parse(File.open(File.join(File.dirname(File.expand_path(__FILE__)), '../../../../../' + Constants::JSON_DETAILS_FILE_PATH)).read)
        end
        json_details
      rescue StandardError => e
        raise SDKException.new(nil, Constants::EXCEPTION_JSONDETAILS, nil, e)
      end

      def get_key_json_details(name, json_details)
        json_details.each_key do |key|
          json_detail = json_details[key]
          if json_detail.key? Constants::NAME
            return json_detail if name.downcase == json_detail[Constants::NAME].downcase
          end
        end
      end
    end
  end
end