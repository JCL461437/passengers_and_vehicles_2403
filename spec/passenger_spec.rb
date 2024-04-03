require 'rspec'
require './lib/passenger.rb'
require 'pry'

RSpec.configure do |config|
      config.formatter = :documentation
end

RSpec.describe Passenger do
    #   before(:each) do
   
    describe '#initialize' do
        it 'can initialize' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie).to be_an_instance_of(Passenger)
            expect(taylor).to be_an_instance_of(Passenger)
        end

        it "has a name" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.name).to eq("Charlie")
            expect(taylor.name).to eq("Taylor")
        end

        it "has an age" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.age).to eq(18)
            expect(taylor.age).to eq(12)
        end

        it "is a driver" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.driver?).to be false
            expect(taylor.driver?).to be false
        end

    end

    describe '#adult?' do
        it 'can determine if passenger is an adult' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.adult?).to be true
            expect(taylor.adult?).to be false
        end
    end

    describe '#driver?' do
        it 'can determine if passenger is a driver' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(charlie.driver?).to be false
            expect(taylor.driver?).to be false

            charlie.drive
            taylor.drive

            expect(charlie.driver?).to be true
            expect(taylor.driver?).to be false 
        end
    end
end