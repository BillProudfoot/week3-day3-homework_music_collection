require ('pg')
require_relative('../db/sql_runner')
require_relative('artist')
require_relative('album')

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

  def self.all()
    sql = "SELECT * FROM artists;"
    result = SqlRunner.run(sql)
    artists = result.map{|album| Artist.new(album)}
    return artists
  end 

  def artist()
    sql = " SELECT * FROM artists WHERE id = #{@artist_id}"
    results = SqlRunner.run(sql)
    artist_data = results[0]
    artist = Artist.new(artist_data)
    return artist 
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    result = SqlRunner.run(sql)
  end 


  end