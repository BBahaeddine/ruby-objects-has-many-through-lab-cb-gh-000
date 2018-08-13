class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(title, genre)
    Song.new(title,self, genre)
  end
  
  def self.all 
    @@all
  end
  
  def songs
    Song.all.collect{|song| song.artist == self}
  end
  def genres
    return Song.all.collect{|song| song.artist == self}.map{|song| song.genre}
  end
  
end