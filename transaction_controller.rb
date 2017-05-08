require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/transaction.rb')

# INDEX - READ  
get '/transactions' do 
  @transactions = Transaction.all()
  erb(:'transactions/index')
end 

#  SHOW - READ

get '/transactions/:id' do 
  @transaction = Transaction.find(params[:id])
  erb(:'transactions/show')
end  