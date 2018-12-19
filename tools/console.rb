require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Kevin")
passenger2 = Passenger.new("Steve")
passenger3 = Passenger.new("Lisa")

driver1 = Driver.new("Bobby")
driver2 = Driver.new("Chris")
driver3 = Driver.new("Sam")


ride1 = Ride.new(driver1, passenger1, 3.2)
ride2 = Ride.new(driver1, passenger2, 5.0)
ride3 = Ride.new(driver2, passenger3, 2.4)
ride4 = Ride.new(driver3, passenger1, 8.5)


binding.pry
