require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  
  post '/' do
    erb :submission
  end
  
  get '/submission.erb' do
    # "Hello"
    erb :submission
  end
  
  post '/submission.erb' do
    gift_choice = params[:type]
    @giftidea = gifts(gift_choice)
    @gift_array = @giftidea.split("++")
    @title= @gift_array[0]
    @image= @gift_array[1]
    @description= @gift_array[2]

    erb :results
  end
    
    




end
