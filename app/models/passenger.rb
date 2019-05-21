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
    passenger_rides = Ride.all.select { |ride| ride.passenger == self }
    passenger_rides.map { |ride| ride.driver }
  end

  def self.all
    @@all
  end
end
