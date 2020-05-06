class Song
  attr_accessor :name
  attr_reader :artist 
  
  
  @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    self.artist = artist if artist 
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    self.class.all << self
  end
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
end
  
end