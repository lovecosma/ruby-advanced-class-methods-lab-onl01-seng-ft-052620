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
  if  song.name == title
    return song
  end
  end
  return nil
end

def self.find_or_create_by_name(title)
  if self.find_by_name(title)
    return self.find_by_name(title)
  else
    self.create_by_name(title)
  end
end

def self.alphabetical
  @@all.sort! do |a, b|
    a.name <=> b.name
  end
  return @@all
end

def self.new_from_filename(filename)
  new_file_array = filename.split(" - ")
  new_song = self.create_by_name(new_file_array[1].chomp(".mp3"))
  new_song.artist_name = new_file_array[0]
  return new_song
end

def self.create_from_filename(filename)
self.new_from_filename(filename)
end

def self.destroy_all
  @@all.clear
end


end
