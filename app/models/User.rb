class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        Pledge.all.max_by{|pledge| pledge.amount}.user
    end

    def pledge_count
        Pledge.all.select{|pledge| pledge.user == self}.count
    end

    def self.multi_pledger
        User.all.select{|user| user.pledge_count > 1}
    end

    def self.project_creator
        Pledge.all.select{|pledge| pledge.type == "Create"}.map{|pledge| pledge.user}.uniq
    end
end