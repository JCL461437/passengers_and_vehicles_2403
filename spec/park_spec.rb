require 'rspec'
require './lib/passenger.rb'
require './lib/vehicle.rb'
require './lib/park.rb'
require 'pry'

RSpec.configure do |config|
      config.formatter = :documentation
end

RSpec.describe Park do
   
    describe '#initialize' do
        it 'can initialize' do
            yosemite = Park.new("Yosemite", 20.0)

            expect(yosemite).to be_an_instance_of(Park)
        end
        
        it 'has an name' do
            yosemite = Park.new("Yosemite", 20.0)

            expect(yosemite.name).to eq("Yosemite")
        end

        it 'has an admission price' do
            yosemite = Park.new("Yosemite", 20.0)

            expect(yosemite.admission).to eq(20.0)
        end
    end

    describe '#add_vehicle_to_park' do
    
        it 'can add vehicles' do
            yosemite = Park.new("Yosemite", 20.0)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2010", "Toyota", "Tacoma")

            expect(yosemite.vehicles_in).to eq([])

            yosemite.add_vehicle_to_park(vehicle_1)

            expect(yosemite.vehicles_in).to eq([vehicle_1])

            yosemite.add_vehicle_to_park(vehicle_2)

            expect(yosemite.vehicles_in).to eq([vehicle_1,vehicle_2])
        end
    end

    describe '#passengers'
        it "can list all passengers"
            yosemite = Park.new("Yosemite", 20.0)
            honda = Vehicle.new("2001", "Honda", "Civic")
            tacoma = Vehicle.new("2010", "Toyota", "Tacoma")
            ford = Vehicle.new("2010", "Ford", "F-150")

            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})  
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
            bob = Passenger.new({"name" => "Bob", "age" => 53})  
            gina = Passenger.new({"name" => "Gine", "age" => 2})  

            honda.add_passenger(charlie)
            toyota.add_passenger(jude)
            toyota.add_passenger(taylor)
            ford.add_passenger(bob)
            ford.add_passenger(gina)

            park.add_vehicle_to_park(honda)
            park.add_vehicle(toyota)
            park.add_vehicle(ford)

            expected = [charlie, jude, gina, bob, taylor] #order matters, see how we added vehicles

            expect(yosemite.passengers).to eq(expected)
        end




    end 



end