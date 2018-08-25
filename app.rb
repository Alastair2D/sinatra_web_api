require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hey there!"
end

get '/secret' do
  "Tell me your secrets, please"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/naming-form' do
  erb(:naming_form)
end
