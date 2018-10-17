class Passenger
  attr_reader :name
  # reader == getter
  # writer == setter
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    # ?????????????
  end

  def self.all
    @@all
  end

end
