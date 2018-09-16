require 'ralyxa'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Hello, world'
  end

  post '/request' do
    Ralyxa::Skill.handle(request)
  end
end
