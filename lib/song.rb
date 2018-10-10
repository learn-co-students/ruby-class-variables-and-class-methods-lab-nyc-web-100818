class Song
  attr_accessor :name
  attr_reader :artist, :genre

@@count = 0
@@artists = []
@@genres = []


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << @artist
  @@genres << @genre

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
   h = Hash.new(0)
    @@genres.each {|each_genre| h[each_genre] +=1}
    return h
  end

  def self.artist_count
    h = Hash.new(0)
     @@artists.each {|each_artist| h[each_artist] +=1}
     return h
    end

end
