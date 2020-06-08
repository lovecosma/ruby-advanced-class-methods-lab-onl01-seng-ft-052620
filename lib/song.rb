require 'pry'
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

 def self.find_by_name(title)
   @@all.each do |song|
    if song.name == title
      binding.pry
      return song
    else
      return nil
    end
   end
 end

end
