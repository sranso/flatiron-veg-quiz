# require './lib/*'
require 'sinatra'
require 'bundler'
Bundler.require

class Weird < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/' do
    erb :results
  end
end