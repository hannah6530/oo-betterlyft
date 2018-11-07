class Passenger
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end

    # DON'T DO THIS!!! Ride.all.select do |ride|
    #   if ride.passenger == self
    #     ride.driver
    #   end
    # end
  end

  def self.all
    @@all
  end
end
