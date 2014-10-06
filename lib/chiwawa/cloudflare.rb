module Chiwawa
  class Cloudflare
    def initialize
      @base_url = 'https://www.cloudflare.com/api_json.html'
      @tkn = ENV['CLOUDFLARE_TKN']
      @email = ENV['CLOUDFLARE_EMAIL']
    end

    def add_to_blacklist(ip)
      action :ban, key: ip
    end

    def remove_from_blacklist(ip)
      action :nul, key: ip
    end

    private

    def action(action, payload)
      payload.merge! a: action, tkn: @tkn, email: @email
      response = JSON.parse RestClient.post(@base_url, payload)
      response['result'] == 'success'
    end
  end
end
