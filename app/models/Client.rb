class Client
    attr_reader :location
    attr_accessor :trainer

    @@all = []

    def initialize(location, trainer)
        @location = location
        @trainer = trainer
        @@all << self
    end

    def self.all    
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end
end