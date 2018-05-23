# BAND
########## Band should initialize with a name and hometown
########## Band should have a Band#name and Band#hometown and a band should be able to change it's name
########## Band should have a method Band.all that returns all the instances of Band

# ASSOCIATION METHODS:
# Band should have a method Band#play_in_venue that takes a venue and date as a string as arguments and associates the band to that venue
###### Band should have a method Band#concerts should return an array of all that band's concerts
# Band should have a method Band#venues that returns an array of all the venues the band has concerts in

# Band should have a method Band.all that returns all the instances of Band
class Band
  attr_accessor :name
  attr_reader :hometown

  @@all = []
  def initialize(name,hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.band == self
    end
  end

  # Band should have a method Band#venues that returns an array of all the venues the band has concerts in
  def venues
    self.concerts.map do |concert|
      concert.venue
    end
  end
end
