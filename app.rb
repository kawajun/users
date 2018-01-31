require 'sinatra'
require "sinatra/reloader"
require "sinatra/activerecord"
require "./models/user.rb"
require "json"

get '/' do
  @users = User.all
  erb :index
end
get '/users/all' do
  User.all.to_json
end
get '/users/first' do
  User.first.to_json
end
post '/new' do
  json = JSON.parse(request.body.read)
  user = User.new(json)
  user.save
  user.to_json
end
delete '/users/:id' do
  user = User.find(params[:id])
  if user.destroy
    { result: "success", code: 200 }.to_json
  else
    { result: "failure" }.to_json
  end
end
put '/users/:id' do
  user = User.find(params[:id])
  json = JSON.parse(request.body.read)
  user.update(json)
  user.to_json
end