require 'rubygems'
require 'sinatra'

configure do
  set :bind, '0.0.0.0'
  set :port, 3000
end

get '/' do
    File.read(File.join('public', 'index.html'))
end