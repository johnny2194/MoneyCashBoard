require_relative('../db/sql_runner')

class Transaction

  attr_reader :id, :category_id
  attr_accessor :bank_name, :transaction_date, :description, :type,  :amount

  def initialize( options )
    @id = options['id'].to_i
    @bank_name = options['bank_name']
    @transaction_date = options['transaction_date']
    @description = options['description']
    @type = options['type']
    @category_id = options['category_id'].to_i
    @amount = options['amount']
  end

  def save()
    sql = "INSERT INTO transactions (bank_name, transaction_date, description, type, category_id, amount) VALUES ('#{ @bank_name }','#{ @transaction_date }', '#{ @description }', '#{ @type }', #{ @category_id }, #{ @amount }) 
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

  def category()
    sql = "SELECT * FROM categories 
    WHERE id = #{@category_id}"
    category = SqlRunner.run(sql)
    result = Category.new( category.first )
    return result
  end
  

end 
