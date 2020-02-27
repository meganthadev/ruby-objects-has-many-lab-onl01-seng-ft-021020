class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    Song.all.select do |song|
      song.artist == self
  end
end

  def self.song_count
    song_count = {}
    @songs.each do |song|
      if song_count[song]
      song_count[song] +=1
      else
      song_count[song] = 1
      end
    end
    song_count
  end
end