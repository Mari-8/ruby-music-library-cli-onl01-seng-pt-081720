require 'pry'

class Artist 
  attr_accessor :name, :songs
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
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
    name = Artist.new(name)
  end 
  
  def songs 
    @songs
  end
  
  def add_song(song)
    if song.artist == nil 
     song.artist = self 
     @songs << song 
   else 
     nil 
   end 
  end

  def genres
    self.songs.map{|song| song.genre}.uniq 
  end
  
end 