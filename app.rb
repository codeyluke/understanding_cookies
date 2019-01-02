require 'sinatra'
require 'sinatra/cookies'
set :run, true

get "/" do
  @name = nil || cookies[:name] 
  erb :'home'
 end

post "/" do
  cookies[:name] = params["name"]
  redirect "/"
 end
