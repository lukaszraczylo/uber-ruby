require 'addressable/uri'
require 'open-uri'
require 'hashie'
require 'json'

module UberCar
  module Operations
    class Action
      def initialize(client)
        @client = client
      end

      def show_products( p = {} )
        param = { :api_url => "/products" }
        param = param.merge(p)
        @client.session = login_request(param)
      end

      def estimate_price( p = {} )
        param = { :api_url => "/estimates/price" }
        param = param.merge(p)
        @client.session = login_request(param)
      end

      def estimate_time( p = {} )
        param = { :api_url => "/estimates/time" }
        param = param.merge(p)
        @client.session = login_request(param)
      end

      def promotions ( p = {} )
        param = { :api_url => "/promotions" }
        param = param.merge(p)
        @client.session = login_request(param)
      end

      def sign_up ( p = {} )
        q_url = "https://m.uber.com/sign-up?client_id=#{@client.configuration.app_user_key}"
        uri = Addressable::URI.new
        uri.query_values = p
        return "#{q_url}&#{uri.query}"
      end

      private
      def login_request( p = {} )
        # ap @client.configuration.app_user_key
        if p[:api_url].nil?; p[:api_url] = ''; end
        q_headers = { "Authorization" => "Token #{@client.configuration.app_server_token}" }
        q_request = Hash.new
        q_url = "#{@client.configuration.api_host}#{p[:api_url]}"
        p.delete(:api_url)
        q_request = p
        @options = { :query => q_request, :headers => q_headers }
        obj = HTTParty.get(q_url.to_s, @options).to_json
        result = JSON.parse(obj)
        obj = Hashie::Mash.new(result)
        return obj
      end
    end
  end
end