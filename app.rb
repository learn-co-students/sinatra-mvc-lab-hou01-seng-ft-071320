require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/'do
    "Pig Latinizer!"
    erb :user_input
  end
  
  post '/piglatinize'do
    @user_phrase=params[:user_phrase]
    @piglatinized=PigLatinizer.new
    erb :piglatinize
  end
  
end