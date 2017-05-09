require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')


#  SHOW - READ

get '/categories/:id' do 
  @category = Category.find(params[:id])
  @transactions = @category.transactions()
  @total_amount = @category.total_sum_by_category()
  erb(:'categories/show')
end  