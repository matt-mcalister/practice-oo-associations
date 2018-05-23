# VENUE
######### Venue should initialize with a title and city
######### Venue should have a method Venue.all method which returns all the instances of Venue

# ASSOCIATION METHODS:
######## Venue should have a method Venue#concerts that lists all the concerts that have ever been performed in that venue
######### Venue should have a method Venue#bands that lists all the bands that have ever played in that venue
# Venue should have a method Venue#all_introductions that puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band


class Venue
  attr_accessor :title
  attr_reader :city
  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.venue == self
    end
  end

  # Venue should have a method Venue#bands that lists all the bands that have ever played in that venue
  def bands
    self.concerts.map do |concert|
      concert.band
    end
  end
end
