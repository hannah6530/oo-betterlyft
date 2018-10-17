class Ride
  attr_reader :driver, :passenger, :distance
  # attr_accessor == attr_reader + attr_writer
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance

    @@all << self
  end
  def self.average_distance

  end

  def self.all
    @@all
  end
end
