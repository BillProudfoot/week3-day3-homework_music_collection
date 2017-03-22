require ('pg')
require_relative('../db/sql_runner')
require_relative('album')

class Artist

  attr_reader :title, :genre
  attr_reader :id, :album_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @album_id = options['album-id'].to_i
  end

  def save()
    sql = "
    INSERT INTO artists (
    title,
    genre
    artist_id
    ) VALUES (
    '#{@title}',
    '#{@genre}',
    #{artist_id}
    )
    RETURNING id;"
    result = SqlRunner.run(sql)
    @id = result[0]["id"].to_i
  end

end