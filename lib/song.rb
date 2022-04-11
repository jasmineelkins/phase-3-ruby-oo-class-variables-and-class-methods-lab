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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # returns a hash in which the keys are the names of each genre & values are the number of songs that have that genre.
    # Use .tally method to produce a Histogram
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end
