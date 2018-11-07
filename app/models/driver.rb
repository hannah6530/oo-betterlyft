class Driver
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def passenger_names
    # we need to get all of the rides for this driver
    # we need to get all of a passengers (which are in a ride) for this driver
    # so that we can get a passenger names
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def self.all
    @@all
  end
end
