module Olimpo
  module Authenticator
    def authenticate
      return api_key_authentication if Olimpo.api_key.present?
      basic_auth_authentication
    end

    def api_key_authentication
      default_params api_key: Olimpo.api_key
    end

    def basic_auth_authentication
      basic_auth Olimpo.username, Olimpo.password
    end
  end
end
