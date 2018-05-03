require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

class Server < Sinatra::Base
    get '/' do
        redirect '/editor'
    end

    get '/editor' do
        haml :index
    end

    post '/editor' do
        p params['input']
        if params['input'] == "→" then
            @plain = params['plain']
            @brain = Matsumura.new.generate(@plain)
        elsif params['input'] == "←" then
            @brain = params['brain']
            @plain = Matsumulang.new.fuck(@brain)
        end

        haml :index
    end
end

