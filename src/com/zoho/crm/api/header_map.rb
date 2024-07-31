# This class represents the HTTP header name and value.
require_relative 'util/data_type_converter'
require_relative 'exception/sdk_exception'
require_relative 'util/header_param_validator'
require_relative '../../api/logger/sdk_logger'
require_relative 'util/data_type_converter'

module ZOHOCRMSDK
  class HeaderMap
    attr_accessor :header_hash

    def initialize
      @header_hash = {}
    end

    # This method is to add header name and value.
    # @param header [Header] A Header class instance.
    # @param value [Object] An object containing the header value.
    def add(header, value)
      unless header.is_a? Header
        raise SDKException.new(Constants::HEADER_NULL_ERROR, Constants::HEADER_INSTANCE_NULL_ERROR)
      end

      header_name = header.name

      if header_name.nil?
        raise SDKException.new(Constants::HEADER_NAME_NULL_ERROR, Constants::HEADER_NAME_NULL_ERROR_MESSAGE)
      end

      if value.nil?
        raise SDKException.new(Constants::HEADER_NULL_ERROR, header_name + Constants::NULL_VALUE_ERROR_MESSAGE)
      end

      begin
        parsed_header_value = nil
        if !header.class_name.nil?
          parsed_header_value =  Util::HeaderParamValidator.new.validate(header_name, header.class_name, value)
        else
          begin
            parsed_header_value = DataTypeConverter.post_convert(value, value.class.name)
          rescue StandardError
            parsed_header_value = value
          end
        end
        parsed_header_value = parsed_header_value.to_s
        if (@header_hash.key? header_name) && !@header_hash[header_name].nil?
          existing_header_value = @header_hash[header_name]
          existing_header_value = existing_header_value + ',' + parsed_header_value
          @header_hash[header_name] = existing_header_value
        else
          @header_hash[header_name] = parsed_header_value
        end
      rescue SDKException => e
        SDKLog::SDKLogger.severe(Constants::HEADER_EXCEPTION, e)
        raise e
      rescue StandardError => e
        ex = SDKException.new(nil, nil, nil, e)
        SDKLog::SDKLogger.severe(Constants::HEADER_EXCEPTION, ex)
        raise ex
      end
    end
  end
end