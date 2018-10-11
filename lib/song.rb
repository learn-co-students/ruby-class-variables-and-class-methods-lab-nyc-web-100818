class Song
  attr_accessor :name, :artist, :genre

  # CLASS VARIABLES ...
  @@count = 0 # class variable to keep track of new songs
    # count will be incremented when a new song is created aka whenever we see .new (initialization!)
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  # initialization
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1 # bc we want to inc this everytime a new instance is created
  end

  #CLASS METHODS
  # write a class method, .count, that returns the class var @@count
  def self.count  # self.method_name signifies a class method
    @@count # simply returns/READS our @@count class variable so we can access it
  end

  def self.genres
    @@genres.uniq   # uniq controls for dupes
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
      else
        @@artist_count[artist] = count
      end
    end
    @@artist_count
  end

end
