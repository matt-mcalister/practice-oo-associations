require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

rolling_stones = Band.new("Rolling Stones", "Somewhere british")
b2k = Band.new("bee too kay", "nyc")
that_band_yo = Band.new('whatever', 'place')

msg = Venue.new("msg", "NYC")
matts_basement = Venue.new("matts basement", "also matts basement")

# DATE => integer => YEARMONTHDAY => 20180522 is May 22 2018

b2k_msg = Concert.new(20180522, b2k, msg)
b2k_basement = Concert.new(20170522, b2k, matts_basement)
rolling_basement = Concert.new(20000101, rolling_stones, matts_basement)

binding.pry

hi = 'hello'
