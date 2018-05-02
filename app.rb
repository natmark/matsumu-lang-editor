require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

class Server < Sinatra::Base
    get '/' do
        haml :index
    end
end

