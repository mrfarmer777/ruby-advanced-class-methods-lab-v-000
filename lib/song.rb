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
    res=nil
    @@all.each do |song|
      if song.name==name
        res=song
      end
    end
    res
  end

  def self.find_or_create_by_name(name)
    res=Song.find_by_name(name)
    if res==nil
      Song.create_by_name(name)
    else
      res
    end
  end

  def self.alphabetical
    res=@@all.sort_by {|song| song.name}
  end
    


end
