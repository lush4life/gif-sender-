require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
   erb :index
  end
  
 post '/results' do
   @gif_url = Giphy.random(params[:gif])
   @text1 = Gif.new(params[:number], params[:gif])
   erb :results 
 end
end