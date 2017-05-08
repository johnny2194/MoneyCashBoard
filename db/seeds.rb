require('pry-byebug')
require_relative('../models/transaction.rb')


transaction1 = Transaction.new({
  "bank_name" => "Tesco Bank",
  "transaction_date" => "05-MAY-17",
  "description" => "Waitrose",
  "type" => "Personal",
  "category" => "Food & Groceries",
  "amount" => 54.40
})

transaction2 = Transaction.new({
  "bank_name" => "Tesco Bank",
  "transaction_date" => "06-MAY-17",
  "description" => "Cineworld",
  "type" => "Personal",
  "category" => "Entertainment",
  "amount" => 8.30
})

transaction3 = Transaction.new({
  "bank_name" => "RBS",
  "transaction_date" => "06-MAY-17",
  "description" => "Ethereum",
  "type" => "Personal",
  "category" => "Investments",
  "amount" => 258.60
})

transaction4 = Transaction.new({
  "bank_name" => "Barclays",
  "transaction_date" => "07-MAY-17",
  "description" => "Caffiene Drip",
  "type" => "Personal",
  "category" => "Food & Groceries",
  "amount" => 23.50
})


binding.pry
nil
