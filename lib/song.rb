def Song 
  
    @@all = []
  
  attr_accessor :artist, :name

  def initialize(artist, name)
    @artist = artist
    @name = name
    @songs = []
  end  
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end  
end  