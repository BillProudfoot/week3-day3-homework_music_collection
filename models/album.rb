require ('pg')
require_relative('../db/sql_runner')
require_relative('album')

class Album

  attr_reader :title, :genre, :id, :artist_id


  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "
    INSERT INTO albums (
    title,
    genre,
    artist_id
    ) VALUES (
    '#{@title}',
    '#{@genre}',
    #{@artist_id}
    )
    RETURNING id;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    result = SqlRunner.run(sql)
    albums = result.map{|item| Album.new(item)}
    return albums
  end 

  def self.delete_all()
    sql = "DELETE FROM albums"
    result = SqlRunner.run(sql)
  end 


end