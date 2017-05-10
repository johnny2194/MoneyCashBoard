require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/category.rb')


# INDEX - READ  
get '/categories' do 
  @categories = Category.all()
  erb(:'categories/index')
end 

# NEW - CREATE  
get '/categories/new' do
  @categories= Category.all()
  erb(:'categories/new')
end 

#CREATE - CREATE
post '/categories' do
  @categories = Category.new(params)
  @categories.save()
  redirect '/categories'
end