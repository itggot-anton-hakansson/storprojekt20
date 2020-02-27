require 'sinatra'
require 'sqlite3'
require 'slim'
require 'Bcrypt'
require_relative 'model.rb'

get('/') do
    slim(:index)
end

post('/create_scheme') do 
    text=params[:text]
    create_scheme(text)
    redirect('/')
end

post('/modify_scheme') do
    scheme=params[:scheme]
    exc=params[:exc]
    exc_set=params[:exc_set]
    exc_reps=params[:exc_reps]
    modify_scheme(scheme, exc, exc_set, exc_reps)
    redirect('/')
end