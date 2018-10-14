class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  #Do we have to create an open array if we initialized a class variable?
  @@artists = []
  @@genres = []
  #@@genre = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    #Why did we add += 1 to @@count?
    @@count += 1
    @@artists << artist
    #Why couldn't we just write -- @@genre << genre -- and change the class variableto @@genre
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    #What does .uniq! do?
    #.uniq! choses the repeated array elements and gives only one out.
    #What made us use .uniq!?
    #How did we know that there are more than one artists under thesame name?
    #Maybe there are reapeated songs too
    @@artists.uniq!
  end

  def self.genres
    #Is there any difference between .uniq! and .uniq
    @@genres.uniq
  end
#genre_count wants us to find a way to create a hash that has the genres linked to a key number in chronological order
  def self.genre_count
    genre_count = {}
    #How can I pick .each genre .count them and link them with a key which are numbers that are counted.

    #a.each {|x| print x, " -- " }
    #@@genres.each { |genre| print genre, genre_count = @@genres.count }
    #genre_count

    #where did we find this formate?
    @@genres.each { |genre| genre_count[genre] = @@genres.count(genre) }
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each { |artist| artist_count[artist] = @@artists.count(artist) }
    artist_count
  end

end
