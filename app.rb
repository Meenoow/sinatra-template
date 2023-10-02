require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "http"
require 'open-uri'



get("/") do
  response = HTTP.get('https://api.kanye.rest/')
 
  @api_data = JSON.parse(response.body)

  erb(:main)
end
