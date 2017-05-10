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
    sql = "INSERT INTO banks VALUES ( name, logo_url ) VALUES ('#{ @name }','#{ @logo_url }') 
    RETURNING *;"
    categories_data = SqlRunner.run(sql)
    @id = categories_data.first()['id'].to_i
  end
end 