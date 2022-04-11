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
    # returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre. Histogram: iterate over @@genres and if that hash contains a key of a particular genres, increment that value by one, otherwise create a new key/value pair. Reduce method? Tally?
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end
