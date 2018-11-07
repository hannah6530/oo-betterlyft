require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Bob")
passenger2 = Passenger.new("Jim")

driver1 = Driver.new("Sarah")
driver2 = Driver.new("Joan")
driver3 = Driver.new("Pete")

ride1 = Ride.new(driver1, passenger1, 5.2)
ride2 = Ride.new(driver2, passenger2, 2.7)
ride3 = Ride.new(driver1, passenger2, 3.0)
ride4 = Ride.new(driver2, passenger1, 1.4)
ride5 = Ride.new(driver3, passenger1, 10.3)
# DON'T DO THIS!!!!! bad_ride = Ride.new("bob", "sarah", 5.2)







binding.pry
