class Movie
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
        Moviecharacter.all.select{|mc| mc.movie == self}.map{|mc| mc.character}
    end

    def actors
        self.characters.map{|char| char.actor}.uniq
    end

    def self.most_actors
        @@all.max_by{|movie| movie.actors.length}
    end

end