require 'sinatra'
require "sinatra/reloader"
require "sinatra/activerecord"
require "./models/user.rb" 

get '/users/all' do
  User.all.to_json
end
get '/users/first' do
  User.first.to_json
end

