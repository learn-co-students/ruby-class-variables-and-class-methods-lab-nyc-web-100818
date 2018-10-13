class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
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
  genre_count = {}
  @@genres.each do |genres|
    if genre_count[genres]  #if genre_count has the genres being itereated
      genre_count[genres] += 1 #genre_count [genre] will be incremented in number
    else
      genre_count[genres] = 1
    end
  end
  genre_count
end


def self.artist_count
  artist_count = {}
  @@artists.each do |artists|
    if artist_count[artists]  #if artist_count has the artists being itereated
      artist_count[artists] += 1 #artist_count [artist] will be incremented in number
    else
      artist_count[artists] = 1
    end
  end
  artist_count
end


end #end of Song class
