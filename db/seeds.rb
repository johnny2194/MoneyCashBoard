require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')

Transaction.delete_all()
Category.delete_all()

bank1 = Bank.new({
  "name" => "Tesco Bank",
  "logo_url" => "/Tesco_bank.png"  
  })
bank2 = Bank.new({
  "name" => "Barclays",
  "logo_url" => "/barclays.svg.png"
  })
bank3 = Bank.new({
  "name" => "TSB",
  "logo_url" => "/TSB.svg.png"
  })
bank4 = Bank.new({
  "name" => "Santander",
  "logo_url" => "Santander.png"
  })

bank1.save
bank2.save
bank3.save
bank4.save

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
category9 = Category.new({
  "name" => "Investments"
  })

category1.save
category2.save
category3.save
category4.save
category5.save
category6.save
category7.save
category8.save
category9.save


transaction1 = Transaction.new({
  "bank_name" => "Tesco Bank",
  "transaction_date" => "05-MAY-17",
  "description" => "Waitrose",
  "type" => "Personal",
  "category_id" => category6.id,
  "amount" => 54.40
})

transaction2 = Transaction.new({
  "bank_name" => "Tesco Bank",
  "transaction_date" => "06-MAY-17",
  "description" => "Cineworld",
  "type" => "Personal",
  "category_id" => category8.id,
  "amount" => 8.33
})

transaction3 = Transaction.new({
  "bank_name" => "RBS",
  "transaction_date" => "06-MAY-17",
  "description" => "Ethereum",
  "type" => "Personal",
  "category_id" => category9.id,
  "amount" => 258.60
})

transaction4 = Transaction.new({
  "bank_name" => "Barclays",
  "transaction_date" => "07-MAY-17",
  "description" => "Caffiene Drip",
  "type" => "Personal",
  "category_id" => category6.id,
  "amount" => 23.50
})

transaction1.save()
transaction2.save()
transaction3.save()
transaction4.save()


binding.pry
nil
