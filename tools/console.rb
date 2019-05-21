require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger_kevin = Passenger.new("Kevin")
passenger_greg = Passenger.new("Greg")
passenger_tony = Passenger.new("Tony")
passenger_bob = Passenger.new("Bob")

driver1 = Driver.new("Michelle")
driver2 = Driver.new("Avi")

ride1 = Ride.new(driver1, passenger_kevin, 3.2)
ride2 = Ride.new(driver1, passenger_greg, 5.4)
ride3 = Ride.new(driver2, passenger_tony, 10.0)
ride4 = Ride.new(driver1, passenger_bob, 1.4)
ride5 = Ride.new(driver1, passenger_bob, 10.4)

binding.pry
