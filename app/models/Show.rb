class Show
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Showcharacter.all.select{|sc| sc.show == self}.map{|mc| mc.character}
    end

    def on_the_big_screen
        Movie.all.select{|movie| movie.name == @name}
    end
    
end