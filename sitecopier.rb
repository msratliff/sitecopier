require 'httparty'
require 'json'


class SiteCopier
  
  attr_reader :images

  def initialize(websites)
  	@websites = websites
  	@api_key = "5b88106f9a7ab1c9"
  	@images = []
  end

  def get_screenshots
  	
  	@websites.each do |element|
  		url = "http://api.page2images.com/restfullink?p2i_url=" + element + "&p2i_key=5b88106f9a7ab1c9&p2i_size=750x750"
  		response = HTTParty.get url
		sleep 3
		body = JSON.parse response.body
  		@images << body["image_url"]
  	end

  	@images

  end

end

arr = [
  "http://devbootcamp.com/",
  "http://www.hackreactor.com/",
  "https://wyncode.co/",
  ["https://www.coursereport.com/", "http://www.skilledup.com/", "https://www.becasted.com", "https://news.ycombinator.com/"].sample
]

image_grabber = SiteCopier.new(arr)

image_grabber.get_screenshots

p image_grabber.images