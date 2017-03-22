require ('pg')
require_relative('../db/sql_runner')
require_relative('artist')

class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "
    INSERT INTO artists 
    (
    name
    ) VALUES (
    '#{@name}'
    )
    RETURNING id;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end



  end