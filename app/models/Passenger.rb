class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map{|ride| ride.driver}
    end

    def total_distance
        self.rides.map{|ride| ride.distance}.sum
    end

    def self.premium_members
        @@all.select{|pass| pass.total_distance > 100}
    end

end