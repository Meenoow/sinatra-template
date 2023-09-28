require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "http"
require 'open-uri'

#IMAGE_URLS = [
  #'https://variety.com/wp-content/uploads/2022/10/Kanye-WEst-1.jpg?w=1000.jpg',
  #'https://ca-times.brightspotcdn.com/dims4/default/bdf7dde/2147483647/strip/true/crop/3141x2343+0+0/resize/1200x895!/quality/75/?#url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.#com%2Fc1%2F84%2F220dd37b2186542b6ed6f8433f25%2F757ab655cb214572ab883e7b0e518ccc.jpg',
  #'https://ichef.bbci.co.uk/news/976/cpsprodpb/14927/production/_127336248_314248636f734c3e432a4639fd341db087ff3ba2.jpg',
  
#]

get("/") do
  response = HTTP.get('https://api.kanye.rest/')
 
  @api_data = JSON.parse(response.body)

  #random_image_url = IMAGE_URLS.sample

  #image_data = open(random_image_url).read

  #content_type 'image/jpeg'
  
  #image_data

  erb(:main)
end
