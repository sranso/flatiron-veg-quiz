# require './lib/*'
require 'sinatra'
require 'bundler'
Bundler.require

class Weird < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/' do
    @monogamous_y = "They can't imagine life with anyone else."
    @monogamous_n = "They prefer to have multiple lovers."
    @intmdng_y = "On the other hand, #{params["family"]["siblings"]["0"]["name"]} was not so loving, and in fact bullied #{params["vegname"]}."
    @intmdng_n = "Similarly, #{params["family"]["siblings"]["0"]["name"]} was a loving sibling, and they frolicked in the vegetable patch often."
    erb :results
  end
end