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
            expect(vehicle.speeding).to be false
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
end