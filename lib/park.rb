require './lib/passenger.rb'
require './lib/vehicle.rb'

class Park
    attr_reader :name, :admission, :vehicles_in

    def initialize(name, admission)
        @name = name
        @admission = admission
        @vehicles_in = []
    end

    def add_vehicle_to_park(vehicle)
        @vehicles_in << vehicle
    end

    def passengers
        all_pass = []
        @vehicles.each do |vehicle|
            all_pass << vehicle.passengers
        end
        all_pass.flatten

        # @vehicles_in.map do |vehicle| # same as below
        #     vehicle.passengers 
        # end.flatten

        # @vehicles_in.flat_map do |vehicle|
        #     vehicle.passengers
        # end

    end

    def num_vehicles_in
       @vehicles_in.count
    end

end