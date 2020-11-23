class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select{|d| d.bakery == self}
    end

    def ingredients
        self.desserts.map{|des| des.ingredients}
    end

    def average_calories
        total_cal = self.desserts.map{|des| des.calories}.sum
        num_desserts = self.desserts.count
        total_cal / num_desserts
    end

    def shopping_list
        self.ingredients.flatten.map{|ing| ing.name}
    end
end