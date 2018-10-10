class Song

  @@count = 0 #start at 0, track # of songs it creates
  @@artists = []
   # create a list to show us all artists of existing songs
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

    #takes in 3 arguments (song title, artist of existing songs, genres of existing songs)
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
      count = 1
      if @@genre_count[genre]
        @@genre_count[genre] = count + 1
      else
        @@genre_count[genre] = count
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      count = 1
      if @@artist_count[artist]
        @@artist_count[artist] = count + 1
      else @@artist_count[artist] = count
      end
    end
    @@artist_count
  end

end
