require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

attr_accessor :url

# URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def initialize(string_url)
  @@URL = string_url
end

def get_response_body
  uri = URI.parse(@@URL)
  response = Net::HTTP.get_response(uri)
  response.body
end

def parse_json
  data = JSON.parse(self.get_response_body)
  
end
















end



