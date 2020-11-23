require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("Seattle")
l2 = Listing.new("Barcelona")
l3 = Listing.new("Atlanta")
l4 = Listing.new("Paris")
l5 = Listing.new("London")
l6 = Listing.new("Los Angeles")
l7 = Listing.new("Seattle")

g1 = Guest.new("Harry")
g2 = Guest.new("Lynn")
g3 = Guest.new("Bill")
g4 = Guest.new("Clarice")
g5 = Guest.new("Harry")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l1, g2)
t3 = Trip.new(l1, g3)
t4 = Trip.new(l2, g4)
t5 = Trip.new(l2, g1)

Pry.start
