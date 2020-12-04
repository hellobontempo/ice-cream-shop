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
    @ice_cream = IceCream.new(params)
    if @ice_cream.save 
      redirect "icecreams/#{@ice_cream.id}"
    else
      erb :new_ice_cream
    end
  end  

  get '/icecreams/:id' do 
    @ice_cream = IceCream.find(params[:id])
    erb :show
  end



end
