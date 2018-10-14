
 #create a list to keep track of # of songs in each genre it creates
class Song

  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end


  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    #@@genres = []
    @@genres.each do |genre|
      genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    count = 0
      #@@artists = []
    @@artists.each do |artist|
      artist_hash[artist] = @@artists.count(artist)
    end
    artist_hash
  end

end
