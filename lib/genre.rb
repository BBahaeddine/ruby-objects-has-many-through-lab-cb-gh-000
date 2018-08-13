class Genre 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = []
    @artists = []
  end

  def songs
  end
  def artists
    @artists = Song.all.collect{|song| song.genre == self}.map{|song| song.artist}
    return @artists
  end

end