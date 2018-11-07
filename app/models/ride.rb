class Ride
  attr_accessor :passenger, :driver, :distance
  @@all = []
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance

    @@all << self
  end

  def self.average_distance
    # Returns the average distance
    # across ALL rides
    # self.all.distance
  end

  def self.all
    @@all
  end
end
