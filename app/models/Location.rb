class Location
    attr_reader :place

    @@all = []

    def initialize(place)
        @place = place
        @@all << self
    end

    def self.all    
        @@all
    end

    def clients
        Client.all.select{|client| client.location == self}
    end

    def self.least_clients
        @@all.min_by{|location| location.clients.count}
    end
end