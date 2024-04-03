require 'rspec'
require './lib/vehicle.rb'
require './lib/passenger.rb'
require 'pry'

RSpec.configure do |config|
      config.formatter = :documentation
end

RSpec.describe Vehicle do
    #   before(:each) do
   
    describe '#initialize' do
        it 'can initialize' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle).to be_an_instance_of(Vehicle)
            expect(vehicle.year).to eq("2001")
            expect(vehicle.make).to eq("Honda")
            expect(vehicle.model).to eq("Civic")
        end
    end

    describe '#speeding?' do
        it 'can determine if vehicle is speeding' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.speeding?). to be false

            vehicle.speed

            expect(vehicle.speeding?). to be true
        end
    end

    describe '#add_passenger' do
        it 'can add passengers' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})  
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

            expect(vehicle.passengers).to eq([])

            vehicle.add_passenger(charlie)

            expect(vehicle.passengers). to eq([charlie])

            vehicle.add_passenger(jude)

            expect(vehicle.passengers). to eq([charlie, jude])

            vehicle.add_passenger(taylor)

            expect(vehicle.passengers). to eq([charlie, jude, taylor])

        end
    end
end