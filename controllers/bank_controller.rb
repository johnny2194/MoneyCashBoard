require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/bank.rb')


# INDEX - READ  
get '/banks' do 
  @banks = Bank.all()
  erb(:'banks/index')
end 