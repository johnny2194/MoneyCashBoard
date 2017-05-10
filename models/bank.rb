require_relative('../db/sql_runner')

class Bank

  attr_reader :id
  attr_accessor :name, :logo_url

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def self.delete_all
    sql = "DELETE FROM banks"
    SqlRunner.run( sql )
  end

  def save()
    sql = "INSERT INTO banks ( name, logo_url ) VALUES ('#{ @name }','#{ @logo_url }') 
    RETURNING *;"
    categories_data = SqlRunner.run(sql)
    @id = categories_data.first()['id'].to_i
  end

  def Bank.find( id )
    sql = "SELECT * FROM banks WHERE id=#{id};"
    bank = SqlRunner.run( sql )
    result = Bank.new( bank.first )
    return result
  end

  def Bank.all()
    sql = "SELECT * FROM banks;"
    banks = SqlRunner.run( sql )
    result = banks.map { |bank| Bank.new( bank ) }
    return result
  end

  def transactions_bank()
    sql = "
    SELECT * FROM transactions
    WHERE bank_id = #{@id};"

    transaction_hashes = SqlRunner.run(sql)
    transaction_objects = transaction_hashes.map do |transaction_hash|
      Transaction.new(transaction_hash)
    end
    return transaction_objects
  end
end 