require 'pry'

class Genre 
  attr_accessor :name, :artist, :genre
  @@all = [] 
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @songs = []
    @genre = genre
    save 
  end 
  
  def self.all 
    @@all 
  end  
  
  def save 
    @@all << self 
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
  def self.create(name)
    name = Genre.new(name)
  end
  
  def songs 
    @songs 
  end 
  
end 
  