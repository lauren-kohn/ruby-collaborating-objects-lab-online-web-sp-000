class Song 
  
  attr_accessor :name, :artist, :title 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    #song = self.new
    split_name = filename.split(" - ")#[1]
    song = self.new(split_name[1])
    song.artist = split_name[0] 
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else 
      self.artist.name = name 
    end 
  end 

end