require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      counter = 1
      if
        @@genre_count.keys.include?(genre)
        @@genre_count[genre] = counter + 1
      else
        @@genre_count[genre] = counter
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      counter = 1
      if
        @@artist_count.keys.include?(artist)
        @@artist_count[artist] = counter + 1
      else
        @@artist_count[artist] = counter
      end
    end
    @@artist_count
  end

end
