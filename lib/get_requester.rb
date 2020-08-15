require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester 
  
  def initialize(url) # initializes with a URL 
    @URL = url 
  end 
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
  def get_response_body # sends GET request to URL in initialize, returning body of request 
    uri = URI.parse(@URL)
    response = Net::HTTP.get_response(uri)
    response.body
end
  
  def parse_json #  converts JSON returned from 'get_response_body' into Ruby data structures
    body = JSON.parse(get_response_body)
    body
  end
  
end
