require 'json'
require 'open-uri'
require 'net/http'


class GetRequester

    attr_accessor :url

    def initialize(url)
        @url=url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end


    def parse_json
        request = JSON.parse(get_response_body)
    end

        
end





#GetRequester.new("https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json")


