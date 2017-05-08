require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/transaction.rb')

# INDEX - READ  
get '/transactions' do 
  @transactions = Transaction.all()
  erb(:'transactions/index')
end 