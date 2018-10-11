# require 'pry'
# class Song
# @@count = 0
# @@artists = []
# @@genres = []
#
# attr_accessor =  :name, :genre, :artist
#
# def initialize(name, artist, genre) #instance method
#   @name = name
#   @artist = artist
#    @genre = genre
#    @@count +=1 #class variable
#    @@genres << genre
#     @@artists << artist
#   end
#
# def self.artists
#   @@artists.uniq
# end
#
# def self.genres
#   @@genres.uniq
# end
#
# def self.genre_count
# hash = {}
# @@genres.each do |genre|
#   if hash[genre] == nil
#     hash[genre] = 1
#   else
#     hash[genre] += 1
#   end
# end
# hash
# end
#
# def self.count
#   @@count
# end
#
# def self.artist_count
# artist_hash = {}
# @@artists.each do |artist|
#   if artist_hash[artist] == nil
#     artist_hash[artist] = 1
#   else
#     artist_hash[artist] += 1
# end
# end
# artist_hash
# end
#
# end


class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
