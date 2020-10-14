require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist != nil
    @genre = genre
    self.genre=(genre) if genre != nil
    save
  end 
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  
  def self.destroy_all 
    @@all.clear
  end 
  
  def self.create(name)
    name = Song.new(name)
  end 
    
  def artist=(artist) 
    @artist = artist
    artist.add_song(self)
  end 
  
  def genre 
    @genre 
  end 
  
  def genre=(genre) 
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
 
  
  
end 