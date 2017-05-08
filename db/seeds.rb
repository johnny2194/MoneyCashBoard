require('pry-byebug')
require_relative('../models/transaction.rb')

category1 = Category.new({
  "name" => "Housing"
  })
category2 = Category.new({
  "name" => "Savings"
  })
category3 = Category.new({
  "name" => "Utilities"
  })
category4 = Category.new({
  "name" => "Health Care"
  })
category5 = Category.new({
  "name" => "Bills and Loans"
  })
category6 = Category.new({
  "name" => "Food and Groceries"
  })
category7 = Category.new({
  "name" => "Personal Care"
  })
category8 = Category.new({
  "name" => "Entertainment"
  })


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
  "amount" => 8.33
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

transaction1.save()
transaction2.save()
transaction3.save()
transaction4.save()


binding.pry
nil
