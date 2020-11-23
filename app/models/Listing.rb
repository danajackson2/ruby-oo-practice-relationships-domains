class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end
    
    def self.all
        @@all
    end

    def trips
        Trip.all.select{|t| t.listing == self}
    end

    def guests
        self.trips.map{|t| t.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        @@all.select{|listing| listing.city == city}
    end

    def self.most_popular
        hash = {}
        @@all.each{|listing| hash[listing] ? hash[listing] += 1 : hash[listing] = 1}
        hash.max_by{|k, v| v}[0]
    end

end