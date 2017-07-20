require 'httparty'
require "nokogiri"
require 'json'

url = "http://api.page2images.com/restfullink?p2i_url=http://devbootcamp.com&p2i_key=5b88106f9a7ab1c9&p2i_size=750x750"

response = HTTParty.get url

# noko = Nokogiri::HTML(response.body)


body = JSON.parse response.body

puts body["image_url"]