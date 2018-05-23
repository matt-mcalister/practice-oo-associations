# CONCERT
######## Concert should have a Concert.all method which returns all the instances of Concert
######## Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert
######## Concert should initialize with a date, band, and venue

######## Concert should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown


class Concert
  @@all = []
  attr_reader :date, :band, :venue
  def initialize(date,band,venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  # Concert should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown
  def hometown_show?
    self.venue.city.downcase.chomp == self.band.hometown.downcase.chomp
  end
end
