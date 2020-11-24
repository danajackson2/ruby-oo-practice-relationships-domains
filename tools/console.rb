require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Crowdfunding
u1 = User.new("Greg")
u2 = User.new("Andy")
u3 = User.new("Laura")

p1 = Project.new("Park Bench", 1000)
p2 = Project.new("Library", 2000)
p3 = Project.new("Playground", 3000)

pl1 = Pledge.new(u1, p1, "Back", 100)
pl2 = Pledge.new(u2, p2, "Create", 1050)
pl3 = Pledge.new(u3, p1, "Back", 400)
pl4 = Pledge.new(u2, p1, "Create", 500)
pl5 = Pledge.new(u3, p2, "Back", 1000)
pl6 = Pledge.new(u3, p2, "Back", 50)
pl7 = Pledge.new(u1, p2, "Back", 4)


# # IMDB
# a1 = Actor.new("Jen")
# a2 = Actor.new("Bill")
# a3 = Actor.new("Mark")
# a4 = Actor.new("Marge")
# a5 = Actor.new("Les")
# a6 = Actor.new("Paul")

# c1 = Character.new("Binky", a1)
# c2 = Character.new("Mumsy", a1)
# c3 = Character.new("Pookie", a2)
# c4 = Character.new("Tummy", a4)
# c5 = Character.new("Loopy", a5)
# c6 = Character.new("Plinky", a6)

# m1 = Movie.new("Adventures of Binky")
# m2 = Movie.new("Love Story")
# m3 = Movie.new("Star Wars")

# s1 = Show.new("Star Wars")
# s2 = Show.new("Friends")
# s3 = Show.new("Plant Lady")

# mc1 = Moviecharacter.new(c1, m2)
# mc2 = Moviecharacter.new(c2, m3)
# mc3 = Moviecharacter.new(c3, m1)
# mc4 = Moviecharacter.new(c4, m1)
# mc5 = Moviecharacter.new(c4, m2)
# mc6 = Moviecharacter.new(c2, m3)
# mc7 = Moviecharacter.new(c5, m3)

# sc1 = Showcharacter.new(c4, s1)
# sc2 = Showcharacter.new(c5, s2)
# sc3 = Showcharacter.new(c6, s3)


# #Lyft
# p1 = Passenger.new("Joe")
# p2 = Passenger.new("Mary")
# p3 = Passenger.new("Willow")

# d1  = Driver.new("Bart")
# d2  = Driver.new("Lisa")
# d3  = Driver.new("Marge")

# r1 = Ride.new(p1, d2, 50)
# r2 = Ride.new(p2, d2, 40)
# r3 = Ride.new(p2, d3, 100)
# r4 = Ride.new(p3, d1, 125)


# #Bakery
# b1 = Bakery.new("Joe's Bakery")
# b2 = Bakery.new("Besalu")

# d1 = Dessert.new(b1, "Cookie")
# d2 = Dessert.new(b2, "Fruit Pie")
# d3 = Dessert.new(b1, "Jello")

# i1 = Ingredient.new("cookie flour", 20, d1)
# i2 = Ingredient.new("butter", 100, d1)
# i3 = Ingredient.new("pie flour",25, d2)
# i4 = Ingredient.new("cherries", 30, d2)
# i5 = Ingredient.new("gelatin", 5, d3)
# i6 = Ingredient.new("red 42", 2, d3)


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
