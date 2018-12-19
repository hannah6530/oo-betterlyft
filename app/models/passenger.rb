class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    # find all of this person's rides
    this_passengers_rides = Ride.all.select do |ride|
      ride.passenger == self
    end
    # turn each of these rides into drivers
    this_passengers_rides.map do |ride|
      ride.driver
    end

    # another way
    # Ride.all.select do |ride|
    #   ride.passenger == self
    # end.map do |ride|
    #   ride.driver
    # end
# -------------------------------------
    # Ideal (long term)
    # rides.map do |ride|
    #   ride.driver
    # end

  end


end
