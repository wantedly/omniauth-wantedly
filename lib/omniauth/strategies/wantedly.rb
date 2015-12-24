require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Wantedly < OmniAuth::Strategies::OAuth2
      option :name, "wantedly"
      option :client_options, {
        site:          "https://accounts.wantedly.com",
        authorize_url: "/oauth/authorize"
      }

      uid {
        raw_info["id"]
      }

      info do
        {
          email: raw_info["email"],
          name:  raw_info["name"],
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/auth').parsed
      end
    end
  end
end
