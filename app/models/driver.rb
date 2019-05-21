class Driver
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def passenger_names
    names = rides.map { |ride| ride.passenger.name }
    names.uniq
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def self.all
    @@all
  end
end
