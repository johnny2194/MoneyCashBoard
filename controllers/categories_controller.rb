require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')


#  SHOW - READ

get '/categories/:id' do 
  @categories = Category.find(params[:id])
  erb(:'categories/show')
end  