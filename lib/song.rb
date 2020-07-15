class Song 
  
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
def self.all 
    @@all
  end
  
 def self.new_by_filename(file)
    song_file = file.chomp(".mp3").split(" - ")
    song = Song.new(song_file[1])
    song.artist_name = song_file[0]
    song
    end
  end
end