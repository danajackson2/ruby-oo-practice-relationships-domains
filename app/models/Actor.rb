class Actor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def char_count
        Character.all.select{|char| char.actor == self}.count
    end

    def self.most_characters
        @@all.max_by{|actor| actor.char_count}
    end
end