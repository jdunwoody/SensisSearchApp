require 'rubygems'
require 'json'
require 'net/http'

def perform_search(query, location)
  # put your API key here
  apikey = "c6z2dqbtpmjrrp6vyabym6z9"

  # location of the search endpoint
  endpoint = "http://api.sensis.com.au/ob-20110511/test/search"

  # construct a URL with the query string, escaping any special characters.
  url = "#{endpoint}?key=#{apikey}&query=#{URI.encode(query)}&location=#{URI.encode(location)}"

  # call the endpoint, returning the HTTP response
  response = Net::HTTP.get_response(URI.parse(url))

  # raise an exception if not HTTP 200 (OK)
  response.error! unless response.instance_of? Net::HTTPOK

  # convert the response message in to a Hash object
  result = JSON.parse(response.body)

  # ensure successful status code
  case result["code"]
    when 200 # success
      return result
    when 206 # spell-checker was run
      puts "Note: #{result["message"]}"
      return result
    else
      raise "API returned error: #{result["message"]}, code: #{result["code"]}"
  end
end

def example()
  # perform a search for 'hairdresser'
  results = perform_search("hairdresser", "st kilda, vic")

  puts "Total results found: #{results["totalResults"]}"

  # the results member is an array containing each listings as a nested Hash object
  results["results"].each do |r|
    puts "#{r["name"]} (#{r["primaryAddress"]["addressLine"]})"
  end
end