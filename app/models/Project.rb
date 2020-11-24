class Project
    attr_reader :name, :pledge_goal

    @@all = []

    def initialize(name, pledge_goal)
        @name = name
        @pledge_goal = pledge_goal
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def self.no_pledges
        @@all.select{|project| project.pledges == []}
    end

    def backers
        Pledge.all.select{|pledge| pledge.project == self && pledge.type == "Back"}
    end

    def self.most_backers
        @@all.max_by{|project| project.backers.count}
    end
end