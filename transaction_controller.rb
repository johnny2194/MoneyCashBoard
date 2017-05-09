require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/transaction.rb')
require_relative('models/category.rb')



# INDEX - READ  
get '/transactions' do 
  @transactions = Transaction.all()
  @total_amount = Transaction.total_amount()
  erb(:'transactions/index')
end 

#  SHOW - READ

get '/transactions/:id' do 
  @transaction = Transaction.find(params[:id])
  erb(:'transactions/show')
end  

# INDEX - READ  
get '/categories' do 
  @categories = Category.all()
  erb(:'categories/index')
end 

# NEW - CREATE  
get '/transactions/new' do
  @transactions = Transaction.all()
  erb(:new)
end 