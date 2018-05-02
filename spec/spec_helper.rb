ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rspec'
require 'rack/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false


RSpec.configure do |conf|
    conf.include Rack::Test::Methods
end

def app
    Sinatra::Application
end
