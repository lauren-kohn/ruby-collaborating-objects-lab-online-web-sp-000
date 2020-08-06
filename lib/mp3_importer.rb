class MP3Importer 
  
  attr_accessor :path
  
  def initialize(filename)
    @path = filename
  end 
  
  def files 
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end
  
  def import
    self.files.each { |filename| song.new_by_filename(filename) }
  end 
  
end