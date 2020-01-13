require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @word = params[:user_phrase]
    @pig_latin = PigLatinizer.new.piglatinize(@word)
    erb :show_result
  end
end
