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
    @@genres.push(genre)
    @@artists.push(artist)
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
    counts = Hash.new 0 
    @@genres.each do |genre|
      counts[genre] += 1 
    end 
    counts 
  end 
  
  def self.artist_count
    counts = Hash.new 0 
    @@artists.each do |artist|
      counts[artist] += 1 
    end 
    counts 
  end  
  
end 