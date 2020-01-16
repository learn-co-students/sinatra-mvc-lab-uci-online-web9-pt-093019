require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        
        @translated = PigLatinizer.new.piglatinize(params[:user_phrase])
        
        erb :piglatinized
    end

    get '/piglatinize' do
        erb :user_input
    end

    post '/piglatinize' do
        @translated = PigLatinizer.new.piglatinize(params[:user_phrase])
    end
end