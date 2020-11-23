class Guest
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{|t| t.guest == self}
    end

    def listings
        self.trips.map{|t| t.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        hash = {}
        Trip.all.each{|trip| hash[trip.guest] ? hash[trip.guest] += 1 : hash[trip.guest] = 1}
        hash.select{|k, v| hash[k] > 1}
    end

    def self.find_by_name(name)
        @@all.select{|g| g.name == name}
    end
end