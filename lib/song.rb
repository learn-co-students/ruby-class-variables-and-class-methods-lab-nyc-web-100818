
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
    #@@genres = []
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

  def self.artist_count
    count = 0
      #@@artists = []
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end

end
