require_relative('../db/sql_runner')

class Category 

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO categories ( name ) VALUES ('#{ @name }') 
    RETURNING *;"
    categories_data = SqlRunner.run(sql)
    @id = categories_data.first()['id'].to_i
  end

  def Category.find( id )
    sql = "SELECT * FROM categories WHERE id=#{id};"
    category = SqlRunner.run( sql )
    result = Category.new( category.first )
    return result
  end

  def Category.all()
    sql = "SELECT * FROM categories;"
    categories = SqlRunner.run( sql )
    result = categories.map { |category| Category.new( category ) }
    return result
  end
end