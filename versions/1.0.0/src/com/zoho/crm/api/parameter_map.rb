require_relative 'util/data_type_converter'
require_relative 'exception/sdk_exception'
require_relative 'util/header_param_validator'
require_relative '../../api/logger/sdk_logger'
require_relative 'util/data_type_converter'

module ZOHOCRMSDK
  class ParameterMap
    attr_accessor :param_hash

    def initialize
      @param_hash = {}
    end

    # This method is to add parameter name and value.
    # @param param [Param] A Param class instance.
    # @param value [Object] An object containing the parameter value.
    def add(param, value)
      unless param.is_a? Param
        raise SDKException.new(Constants::PARAMETER_NULL_ERROR, Constants::PARAM_INSTANCE_NULL_ERROR)
      end

      param_name = param.name

      if param_name.nil?
        raise SDKException.new(Constants::PARAM_NAME_NULL_ERROR, Constants::PARAM_NAME_NULL_ERROR_MESSAGE)
      end

      if value.nil?
        raise SDKException.new(Constants::PARAMETER_NULL_ERROR, param_name + Constants::NULL_VALUE_ERROR_MESSAGE)
      end

      begin
        parsed_param_value = nil
        if !param.class_name.nil?
          parsed_param_value = Util::HeaderParamValidator.new.validate(param_name, param.class_name, value)
        else
          begin
            parsed_param_value = DataTypeConverter.post_convert(value, value.class.name)
          rescue StandardError
            parsed_param_value = value
          end
        end
        parsed_param_value = parsed_param_value.to_s
        if (@param_hash.key? param_name) && !@param_hash[param_name].nil?
          existing_param_value = @param_hash[param_name]
          existing_param_value = existing_param_value + ',' + parsed_param_value
          @param_hash[param_name] = existing_param_value
        else
          @param_hash[param_name] = parsed_param_value
        end
      rescue SDKException => e
        SDKLog::SDKLogger.severe(Constants::PARAM_EXCEPTION, e)
        raise e
      rescue StandardError => e
        ex = SDKException.new(nil, nil, nil, e)
        SDKLog::SDKLogger.severe(Constants::PARAM_EXCEPTION, ex)
        raise ex
      end
    end
  end
end