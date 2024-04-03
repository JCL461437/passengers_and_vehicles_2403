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

    end

end