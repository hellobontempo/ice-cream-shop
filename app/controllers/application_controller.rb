require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/icecreams/new' do
    erb :new_ice_cream
  end  

  post '/icecreams' do 

  end  



end
