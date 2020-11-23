class Dessert
    attr_reader :bakery, :name

    @@all = []

    def initialize(bakery, name)
        @bakery = bakery
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select{|ing| ing.dessert == self}
    end

    def calories
        self.ingredients.map{|ing| ing.calories}.sum
    end

end