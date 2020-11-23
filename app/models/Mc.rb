class Moviecharacter
    #join model for movies to characters
    attr_reader :character, :movie

    @@all = []

    def initialize(character, movie)
        @character = character
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end
end