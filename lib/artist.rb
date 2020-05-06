class Artist 
attr_accessor :name 
attr_reader :songs 
@@all = []

def initialize(name)
  @name = name 
end

def self.all
  @@all 
end

def save 
  self.class.all << self
end

def self.destroy_all 
  @@all.clear
end

def self.create(name)
  artist = Artist.new(name)
  artist.save
  artist
end

def add_song 
end
end