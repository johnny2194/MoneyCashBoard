require_relative('../db/sql_runner')

class Bank

  attr_reader :id
  attr_accessor :name, :logo_url

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @logo_url = options['logo_url']
  end

end 