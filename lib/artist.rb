def Artist 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
   def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @aongs << song 
    song.atrist = self
  end  
  
  def all
    @@all.each 
  end   
  
end  