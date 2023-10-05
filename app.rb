require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "http"
require 'open-uri'
require_relative 'constants'



get("/") do
  response = HTTP.get('https://api.kanye.rest/')
  @quote = JSON.parse(response.body).fetch("quote")

  erb(:main)
end
