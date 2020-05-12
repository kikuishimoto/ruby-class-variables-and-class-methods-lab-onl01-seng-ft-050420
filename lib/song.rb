class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  def initialize(song_name, artist, genre)
    @name = song_name
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
    @@genres.uniq!
  end
  def self.artists
    @@artists.uniq!
  end
  def genres_count
    genres_count = {}
    @@genres.each do |genre|
      if @@genres[genre]
        genres_count[genre] += 1
      else
        genres_count[genre] = 1
      end
    end
    genres_count
  end

  def artists_count
    artist_count = {}
    @@artists.each do |genre|
      if @@artists[artist]
        artists_count[artist] += 1
      else
        artists_count[artist] = 1
      end
    end
    artists_count
  end

end
