require 'sinatra'
require 'thin'
require 'sinatra/base'
require 'sinatra/assetpack'

# sets root as the parent-directory of the current file
set :root, File.join(File.dirname(__FILE__))
# sets the view directory correctly
set :views, Proc.new { File.join(root, "app", "views") } 

get '/' do
  erb :index
end

get '/works' do
  erb :works
end