# Write your code here
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
attr_accessor :url

    def initialize(url)
       @url = url
    end

    def get_response_body
        request = URI.parse(self.url)
        opened = Net::HTTP.get_response(request)
        opened.body
    end

    def parse_json
       JSON.parse(self.get_response_body)
    end



end
