# Write your code here
require 'net/http'
require 'open-uri'
require 'json'



class GetRequester
  
  
  attr_accessor :url 

  
  def initialize(url)
    @url = url 
  end
  
  def get_response_body
 uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  
end
  
  
  def parse_json 
    program_hash = []
     curric  = JSON.parse(self.get_response_body)
  curric.collect do |program|
    program_hash = program
  end
  end
  
  
  
end