require 'sinatra'
require "./sitecopier.rb"


arr = [
  "http://devbootcamp.com/",
  "http://www.hackreactor.com/",
  "https://wyncode.co/",
  ["https://www.coursereport.com/", "http://www.skilledup.com/", "https://www.becasted.com", "https://news.ycombinator.com/"].sample
]

image_grabber = SiteCopier.new(arr)

images_array = image_grabber.get_screenshots




get "/" do 
	output = ""
	image_grabber.images.each do |element|
		if element
			output +="<div>" + element + "</div>"
		end
	end

	# images_array.each do |element|
	# 	puts element
	# end

end