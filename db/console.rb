require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({'name' => 'Elvis'})
artist1.save()

artist2 = Artist.new({'name' => 'Adele'})
artist1.save()

artist3 = Artist.new({'name' => 'Kylie'})
artist1.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'The Early years',
  'genre' => 'rock' 
  }) 

album2 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'The Later years',
  'genre' => 'ballads' 
  }) 

album3 = Album.new({
  'artist_id' => artist2.id,
  'title' => '21',
  'genre' => 'ballads' 
  }) 

album3 = Album.new({
  'artist_id' => artist3.id,
  'title' => 'Lucky',
  'genre' => 'pop' 
  }) 


ablum1.save()
album2.save()
album3.save()
album4.save()

binding.pry
nil