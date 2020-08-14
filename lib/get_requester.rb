require 'open-uri'
require 'net/http'
require 'json'

class GetRequester # is a class that can be initiated by passing in a URL

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def initialize(url)
    @url = url
  end

  def get_response_body #is an instance method on the GetRequester class
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri) #sends a GET request to the URL provided on initialization, returning the body of the request
    response.body
  end

  def parse_json #is an instance method on the GetRequester class
    response = JSON.parse(self.get_response_body) # converts JSON returned from 'get_response_body' into Ruby data structures
  end


end
