require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/transaction.rb')



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
  @categories = Transaction.all()
  erb(:'categories/index')
end 