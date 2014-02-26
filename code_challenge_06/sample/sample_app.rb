# sample/sample_app.rb
require 'sinatra'
require 'pry'


# We us "classic" mode where you don't actually see the class
# inheriting from Sinatra::Base and you don't start the app with
# rackup. This makes the object structure less obvious but lets
# Sinatra do more of the behind-the-scenes

get '/' do
  "Hello, World!"
end

post '/' do
  # "Caught a post" 
end

