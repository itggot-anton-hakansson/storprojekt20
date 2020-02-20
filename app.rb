require 'sinatra'
require 'sqlite3'
require 'slim'
require 'Bcrypt'
require_relative 'model.rb'

get('/') do
    slim(:index)
end