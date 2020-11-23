require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Bakery
b1 = Bakery.new("Joe's Bakery")
b2 = Bakery.new("Besalu")

d1 = Dessert.new(b1, "Cookie")
d2 = Dessert.new(b2, "Fruit Pie")
d3 = Dessert.new(b1, "Jello")

i1 = Ingredient.new("cookie flour", 20, d1)
i2 = Ingredient.new("butter", 100, d1)
i3 = Ingredient.new("pie flour",25, d2)
i4 = Ingredient.new("cherries", 30, d2)
i5 = Ingredient.new("gelatin", 5, d3)
i6 = Ingredient.new("red 42", 2, d3)


# #Airbnb
# l1 = Listing.new("Seattle")
# l2 = Listing.new("Barcelona")
# l3 = Listing.new("Atlanta")
# l4 = Listing.new("Paris")
# l5 = Listing.new("London")
# l6 = Listing.new("Los Angeles")
# l7 = Listing.new("Seattle")

# g1 = Guest.new("Harry")
# g2 = Guest.new("Lynn")
# g3 = Guest.new("Bill")
# g4 = Guest.new("Clarice")
# g5 = Guest.new("Harry")

# t1 = Trip.new(l1, g1)
# t2 = Trip.new(l1, g2)
# t3 = Trip.new(l1, g3)
# t4 = Trip.new(l2, g4)
# t5 = Trip.new(l2, g1)

Pry.start
