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
            yosemite = Park.new(150)

            expect(yosemite).to be_an_instance_of(Park)
        end
        
        it 'has an admission price' do
            yosemite = Park.new(150)

            expect(yosemite.admission).to eq (150)
        end
    end

    describe '#add_vehicle_to_park' do
    
        
        it 'can add vehicles' do
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2020", "Honda", "Pilot")
            yosemite = Park.new(150)

            expect(yosemite.vehicles_in).to eq([])

            yosemite.add_vehicle_to_park(vehicle_1)

            expect(yosemite.vehicles_in).to eq([vehicle_1])

            yosemite.add_vehicle_to_park(vehicle_2)

            expect(yosemite.vehicles_in).to eq([vehicle_1,vehicle_2])
        end
    end



end