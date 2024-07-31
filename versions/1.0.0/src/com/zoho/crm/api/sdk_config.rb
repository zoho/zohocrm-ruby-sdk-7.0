
module ZOHOCRMSDK
  class SDKConfig
    attr_reader :auto_refresh_fields , :pick_list_validation ,:open_timeout ,:read_timeout ,:write_timeout ,:keep_alive_timeout

    def initialize(auto_refresh_fields: false, pick_list_validation: true, open_timeout: 60, read_timeout: 60, write_timeout: 60, keep_alive_timeout: 2)
      @auto_refresh_fields = auto_refresh_fields
      @pick_list_validation = pick_list_validation
      @open_timeout = open_timeout
      @read_timeout = read_timeout
      @write_timeout = write_timeout
      @keep_alive_timeout = keep_alive_timeout
    end
  end
end
