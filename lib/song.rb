class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @@count += 1
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count.keys.include?(genre) ? genre_count[genre] += 1 : genre_count[genre] = 1
    end
    genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count.keys.include?(artist) ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end

end
