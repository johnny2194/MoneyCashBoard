require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')


# INDEX - READ  
get '/:category.name' do 
  @categories = Category.all()
  erb(:'categories/index')
end 