require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')



# INDEX - READ  
get '/transactions' do 
  @transactions = Transaction.all()
  @total_amount = Transaction.total_amount()
  @categories= Category.all()
  erb(:'transactions/index')
end 

# NEW - CREATE  
get '/transactions/new' do
  @categories= Category.all()
  @transactions = Transaction.all()
  @total_amount = Transaction.total_amount()
  erb(:'transactions/new')
end 

#CREATE - CREATE
post '/transactions' do
  @transactions = Transaction.new(params)
  @transactions.save()
  redirect '/transactions'
end

post '/transactions/filter' do
  @categories= Category.all()
  @category = Category.find(params['category_id'])
  @transactions = @category.transactions()
  @total_amount = @category.total_sum_by_category()
  erb(:'categories/show')
end 

#  SHOW - READ

get '/transactions/:id' do 
  @transaction = Transaction.find(params[:id])
  erb(:'transactions/show')
end  


