require 'rspec'
require './lib/passenger.rb'
require './lib/vehicle.rb'
require 'pry'

RSpec.configure do |config|
      config.formatter = :documentation
end

RSpec.describe Park do
    #   before(:each) do
   
    describe '#initialize' do
        it 'can initialize' do
            yosemite= Park.new({"Admission" => 150})

            expect(yosemite).to be_an_instance_of(Park)
        end
        
        it 'has an admission price' do
            yosemite= Park.new({"Admission" => 150})

            expect(yosemite.admission).to eq (150)
        end
    end

end