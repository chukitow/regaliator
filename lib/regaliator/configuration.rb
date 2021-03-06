module Regaliator
  class Configuration
    attr_accessor :api_key, :secret_key, :host, :open_timeout, :read_timeout, :use_ssl
    attr_accessor :proxy_host, :proxy_port, :proxy_user, :proxy_pass
    attr_reader   :version

    def initialize
      @api_key      = nil
      @secret_key   = nil
      @host         = nil
      @version      = Regaliator::API_VERSION
      @open_timeout = 10
      @read_timeout = 60
      @use_ssl      = true

      @proxy_host   = nil
      @proxy_port   = nil
      @proxy_user   = nil
      @proxy_pass   = nil
    end

    def secure?
      use_ssl == true
    end
  end
end
