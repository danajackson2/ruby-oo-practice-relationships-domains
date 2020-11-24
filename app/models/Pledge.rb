class Pledge
    attr_reader :user, :project, :type, :amount

    @@all = []

    def initialize(user, project, type, amount)
        @user = user
        @project = project
        @type = type
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end

end