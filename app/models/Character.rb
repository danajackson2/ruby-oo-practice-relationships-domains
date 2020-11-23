class Character
    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        @@all.max_by{|character| Moviecharacter.all.select{|mc| mc.character == character}.count + Showcharacter.all.select{|sc| sc.character == character}.count}
    end

    
end