require 'logger'

module ZOHOCRMSDK
  module SDKLog
    class Log
      attr_reader :level , :path
      def initialize(level,path)
        @level = level
        @path = path
      end

      def self.initialize(level:, path:nil)
        Log.new(level, path)
      end

      def as_logger
        return Logger.new(File.open(File::NULL, 'w')) if self.level == Levels::OFF || self.path.nil? || self.path == ""

        logger = self.path.nil? ? Logger.new(STDOUT) : Logger.new(self.path)
        logger.level = self.level ? Object.const_get("Logger::#{self.level}") : Logger::INFO
        logger
      end
    end

    # Generic logger to support passing in a custom logger i.e. your application's Rails.logger
    class SDKLogger
      def self.initialize(log)
        return @logger = log.as_logger if log.is_a?(Log)
        @logger = log
      rescue StandardError => e
        raise SDKException.new(nil, Constants::LOGGER_INITIALIZATION_ERROR, nil, e)
      end

      def self.info(message)
        @logger&.info("#{Time.new} #{message}")
      end

      def self.error(message, exception = nil)
        message = "#{message}#{exception}#{exception.backtrace&.join("\n")}" unless exception.nil?
        @logger&.error("#{Time.new} #{message}")
      end

      def self.warn(message)
        @logger&.warn("#{Time.new} #{message}")
      end

      def self.severe(message, exception = nil)
        message = "#{message}#{exception}#{exception.backtrace&.join("\n")}" unless exception.nil?
        @logger&.fatal("#{Time.new} #{message}")
      end
    end
  end

  module Levels
    SEVERE = 'FATAL'
    INFO = 'INFO'
    WARNING = 'WARN'
    ERROR = 'ERROR'
    DEBUG = 'DEBUG'
    ALL = 'DEBUG'
    OFF = 'OFF'
    FATAL = 'FATAL'
  end
end