class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all #returns the class variable all
  end

  def save
    self.class.all << self #instance method that goes back to class variable all??
  end

  def self.create
    song=Song.new
    song.save
    song
  end

end
