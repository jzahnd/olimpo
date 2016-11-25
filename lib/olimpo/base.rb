require "olimpo/error"
require "httmultiparty"
require "olimpo/authenticator"

module Olimpo
  class Base
    include HTTMultiParty
    extend Olimpo::Authenticator
    
    base_uri Olimpo.base_uri
    authenticate
    debug_output $stdout

    protected

    def self.raise_exception(code, body)
      raise Olimpo::ServerError.new(code, body) if code >= 500
      raise Olimpo::ClientError.new(code, body) if code < 500
    end


  end
end
