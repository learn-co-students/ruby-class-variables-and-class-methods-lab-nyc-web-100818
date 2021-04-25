require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0 # class variable to track # of song instances created
  @@artists = [] # will hold all of the artists
  @@genres = [] # will contain all of the genres of existing songs

  def initialize(name, artist, genre) # AN INSTANCE METHOD
    # INSTANCE VARIABLES
    @name = name
    @artist = artist
    @genre = genre
    # CLASS VARIABLES
    @@count += 1 # inc @@count everytime a new Song instance is created
    @@artists << artist # add the artist everytime a new Song instance is created, control for dupes later
    @@genres << genre # shovel the genre related to a new instance into the @@genres array
  end

  # CLASS METHODS: so they are written as self.class_method_name
  def self.count # returns the @@count class variable
    @@count
  end

  def self.artists # returns a unique array of artists of existing songs
    @@artists.uniq # uniq controls for dupes
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count # returns a hash of genres and the number of songs that have those genres
    # want it to look like hash = {genre: 2, anothergenre: 1, etc}
      # we can grab genre from the :genre attribute
      # grab # of songs related to that genre via: iterating over @@genres and create a count
    genre_hash = {} # empty hash to iterate over
    @@genres.map do |genre| # each item in the @@genres array is a genre
      if !genre_hash.keys.include?(genre) # if the genre HASH keys does NOT include this genre then,
        genre_hash[genre] = 1 # create that key and set its value to 1
      else
        genre_hash[genre] += 1 # otherwise, increment the counter
      end
    end
    
    genre_hash # return the genre_hash
  end
  # binding.pry

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash.keys.include?(artist) # if the artist hash does not have this artist as a key, then make a new key value pair and set counter to 1
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end

    artist_hash
  end


end # end of Song class
# binding.pry
# puts "hello"
