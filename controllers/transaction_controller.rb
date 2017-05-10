require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')
require_relative('../models/bank.rb')


# INDEX - READ  
get '/transactions' do 
  @transactions = Transaction.all()
  @total_amount = Transaction.total_amount()
  @categories= Category.all()
  @banks= Bank.all()
  erb(:'transactions/index')
end 

# NEW - CREATE  
get '/transactions/new' do
  @categories= Category.all()
  @banks= Bank.all()
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

post '/transactions/category_filter' do
  @categories= Category.all()
  @category = Category.find(params['category_id'])
  @transactions = @category.transactions()
  @total_amount = @category.total_sum_by_category()
  erb(:'categories/show')
end

post '/transactions/bank_filter' do
  @categories= Category.all()
  @banks= Bank.all()
  @bank = Bank.find(params['bank_id'])
  @transactions = @bank.transactions_bank()
  @total_amount = @bank.total_sum_by_bank()
  erb(:'banks/show')
end 
#  SHOW - READ

get '/transactions/:id' do 
  @transaction = Transaction.find(params[:id])
  erb(:'transactions/show')
end  

# #EDIT 

get '/transactions/:id/edit' do 
  @transaction = Transaction.find(params[:id])
  @categories = Category.all()
  @banks= Bank.all()
  erb(:'transactions/edit')
end 

#update 

post '/transactions/:id' do 
  @transaction = Transaction.new(params)
  @transaction.update()
  redirect("/transactions/#{params[:id]}")
end 

# DELETE - DELETE 
post '/transactions/:id/delete' do
  @transaction = Transaction.find( params[:id])
  @transaction.delete()
  erb(:'transactions/delete')
end





