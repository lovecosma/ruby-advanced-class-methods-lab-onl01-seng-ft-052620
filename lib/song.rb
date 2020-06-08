class Song
  attr_accessor :name, :artist_name
  @@all = []
# def initialize(name, artist_name)
#   @name = name
#   @artist_name = artist_name
# end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


def self.create
song = Song.new
song.save
return song
end

def self.new_by_name(title)
song = Song.new
song.name = title
return song
end

def self.create_by_name(title)
  song = Song.new
  song.name = title
  song.save
  return song
end

 def find_by_name(title)
   @@all.each do |song|
     return song if title == song.name 
   end
 end

end
