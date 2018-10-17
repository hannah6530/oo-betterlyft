require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("KevyWevy")
passenger2 = Passenger.new("bob")
passenger3 = Passenger.new("Sabrina")

driver1 = Driver.new("Sarah")
driver2 = Driver.new("Beth")
driver3 = Driver.new("Johnny")

ride1 = Ride.new(driver1, passenger1, 3.65)
Ride.new(driver1, passenger1, 1.65)
Ride.new(driver1, passenger1, 4.65)
Ride.new(driver1, passenger1, 5.65)
ride2 = Ride.new(driver2, passenger1, 2.02)
ride3 = Ride.new(driver3, passenger3, 5.7)
ride4 = Ride.new(driver3, passenger2, 2.434)
ride5 = Ride.new(driver2, passenger2, 1.2)


binding.pry
