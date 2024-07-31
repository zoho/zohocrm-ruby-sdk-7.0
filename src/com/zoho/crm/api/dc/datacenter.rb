module ZOHOCRMSDK
  module DC
    class DataCenter
      def get_iam_url
        nil
      end

      def get_file_upload_url
        nil
      end

      class Environment
        attr_reader :accounts_url, :url, :file_upload_url
        def initialize(url, accounts_url, file_upload_url)
          @url = url
          @accounts_url = accounts_url
          @file_upload_url = file_upload_url
        end
      end

      def self.get(config)
        if Constants::US_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return USDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return USDataCenter::DEVELOPER
          end
          return USDataCenter::PRODUCTION
        elsif Constants::JP_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return JPDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return JPDataCenter::DEVELOPER
          end
          return JPDataCenter::PRODUCTION
        elsif Constants::IN_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return INDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return INDataCenter::DEVELOPER
          end
          return INDataCenter::PRODUCTION
        elsif Constants::EU_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return EUDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return EUDataCenter::DEVELOPER
          end
          return EUDataCenter::PRODUCTION
        elsif Constants::CN_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return CNDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return CNDataCenter::DEVELOPER
          end
          return CNDataCenter::PRODUCTION
        elsif Constants::AU_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return AUDataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return AUDataCenter::DEVELOPER
          end
          return AUDataCenter::PRODUCTION
        elsif Constants::CA_DATACENTER.include?(config)
          if config.include? Constants::SANDBOX
            return CADataCenter::SANDBOX
          elsif config.include? Constants::DEVELOPER
            return CADataCenter::DEVELOPER
          end
          return CADataCenter::PRODUCTION
        end
        nil
      end
    end
  end
end