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
        @plain = params['plain']
        @brain = Matsumura.new.generate(@plain)
        haml :index
    end
end

