# Based on the instructions I think each ingredient is only supposed to belong to one dessert (not totally modeling the real world but makes it a simpler relationship).

class Ingredient
    attr_reader :name, :calories, :dessert

    @@all = []

    def initialize(name, calories, dessert)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_by_name(ingredient)
        @@all.select{|ing| ing.name.include? ingredient}
    end
end