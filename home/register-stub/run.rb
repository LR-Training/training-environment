require 'sinatra'
require 'erb'
require 'json'
require 'rubygems'
#require_relative 'DT160760.rb'
require_relative 'getjson.rb'
set :bind, '0.0.0.0'
set :port, 5000

get '/' do
  erb :index
end

get '/failed' do
  erb :failed
end

#left in to show initial way site created that was inefficient
#get '/DT160760' do
#  content_type :json
#  getjson('DT160760.json')
#  DT160760()
#end

#takes in title numbers from the index page or URL
get '/:name' do
  content_type :json
  getjson("#{params[:name]}.json")


end
