class Driver
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
      ride.driver == self
    end
  end

  def passenger_names
    names = self.rides.map do |ride|
      ride.passenger.name
    end

    names.uniq
  end

end
