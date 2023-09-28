require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "http"
require 'nokogiri'
require 'open-uri'

IMAGE_SOURCE_URL = [
  'https://www.dreamstime.com/photos-images/kanye-west.html'
]

get("/") do
  response = HTTP.get('https://api.kanye.rest/')
 
  @api_data = JSON.parse(response.body)

  page = Nokogiri::HTML(open('https://www.dreamstime.com/photos-images/kanye-west.html'))
  
  image_urls = page.css('img').map { |img| img['src'] }
  
  random_image_url = image_urls.sample
  
  image_data = open(random_image_url).read
  
  content_type 'image/jpeg' 
  
  image_data

  erb(:main)
end
