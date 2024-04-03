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
            expect(charlie).to be_an_instance_of(Passenger)
        end

        it "has a date" do