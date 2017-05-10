require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/category.rb')
require_relative('../models/bank.rb')

Transaction.delete_all()
Category.delete_all()
Bank.delete_all()

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
  "logo_url" => "/Santander.png"
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
  "bank_id" => bank1.id,
  "transaction_date" => "05-MAY-17",
  "description" => "Waitrose",
  "type" => "Personal",
  "category_id" => category6.id,
  "amount" => 54.40
})

transaction2 = Transaction.new({
  "bank_id" => bank2.id,
  "transaction_date" => "06-MAY-17",
  "description" => "Cineworld",
  "type" => "Personal",
  "category_id" => category8.id,
  "amount" => 8.33
})

transaction3 = Transaction.new({
  "bank_id" => bank3.id,
  "transaction_date" => "06-MAY-17",
  "description" => "Ethereum",
  "type" => "Personal",
  "category_id" => category9.id,
  "amount" => 258.60
})

transaction4 = Transaction.new({
  "bank_id" => bank4.id,
  "transaction_date" => "07-MAY-17",
  "description" => "Caffiene Drip",
  "type" => "Personal",
  "category_id" => category6.id,
  "amount" => 23.50
})

transaction5 = Transaction.new({
  "bank_id" => bank2.id,
  "transaction_date" => "08-MAY-17",
  "description" => "Rent",
  "type" => "Personal",
  "category_id" => category1.id,
  "amount" => 480.00
})

transaction6 = Transaction.new({
  "bank_id" => bank3.id,
  "transaction_date" => "09-MAY-17",
  "description" => "Bitcoin",
  "type" => "Personal",
  "category_id" => category9.id,
  "amount" => 399.00
})

transaction7 = Transaction.new({
  "bank_id" => bank4.id,
  "transaction_date" => "09-MAY-17",
  "description" => "Electricy",
  "type" => "Personal",
  "category_id" => category3.id,
  "amount" => 38.50
})

transaction8 = Transaction.new({
  "bank_id" => bank2.id,
  "transaction_date" => "09-MAY-17",
  "description" => "Spotify",
  "type" => "Personal",
  "category_id" => category8.id,
  "amount" => 4.99
})

transaction9 = Transaction.new({
  "bank_id" => bank2.id,
  "transaction_date" => "09-MAY-17",
  "description" => "Graze",
  "type" => "Personal",
  "category_id" => category6.id,
  "amount" => 5.00
})

transaction10 = Transaction.new({
  "bank_id" => bank1.id,
  "transaction_date" => "10-MAY-17",
  "description" => "Filling at Dentist",
  "type" => "Personal",
  "category_id" => category4.id,
  "amount" => 17.50
})

transaction1.save()
transaction2.save()
transaction3.save()
transaction4.save()
transaction5.save()
transaction6.save()
transaction7.save()
transaction8.save()
transaction9.save()
transaction10.save()



binding.pry
nil
