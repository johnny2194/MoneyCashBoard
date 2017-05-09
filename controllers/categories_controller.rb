require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')


#  SHOW - READ

get '/categories/:id' do 
  @category = Category.find(params[:id])
  # @transactions @category.transactions
  @transactions = Transaction.all()
  @total_amount = Transaction.total_amount()
  erb(:'categories/show')
end  