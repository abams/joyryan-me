require 'sinatra'

set :public_folder => 'assets'

get '/' do
  erb :home
end
