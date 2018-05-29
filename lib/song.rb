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

  def self.new_by_name(name)
    song=Song.new
    song.name=name
    song
  end

  def self.create_by_name(name)
    song=Song.new
    song.name=name
    song.save
    song
  end

  def self.find_by_name(name)
    res=""
    @@all.each do |song|
      if song.name==name
        res=song
      end
    end
    res
  end

  def self.find_or_create_by_name(name)

end
