require_relative('../db/sql_runner')

class Transaction

  attr_reader :id
  attr_accessor :bank_name, :transaction_date, :description, :type, :category, :amount

  def initialize( options )
    @id = options['id'].to_i
    @bank_name = options['bank_name']
    @transaction_date = options['transaction_date']
    @description = options['description']
    @type = options['type']
    @category = options['category']
    @amount = options['amount']
  end

  def save()
    sql = "INSERT INTO transactions (bank_name, transaction_date, description, type, category, amount) VALUES ('#{ @bank_name }','#{ @transaction_date }', '#{ @description }', '#{ @type }', '#{ @category }', #{ @amount }) 
    RETURNING *;"
    transaction_data = SqlRunner.run(sql)
    @id = transaction_data.first()['id'].to_i
  end

  def Transaction.all()
    sql = "SELECT * FROM transactions;"
    transactions = SqlRunner.run( sql )
    result = transactions.map { |transaction| Transaction.new( transaction ) }
    return result
  end

  def Transaction.find( id )
    sql = "SELECT * FROM transactions WHERE id=#{id};"
    transaction = SqlRunner.run( sql )
    result = Transaction.new( transaction.first )
    return result
  end 


  def Transaction.total_amount()
      sql = "SELECT SUM (amount) FROM transactions;"
      total_amount_hash = SqlRunner.run( sql )
      return total_amount_hash[0]['sum'].to_f
  end
  

end 
