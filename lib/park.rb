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

    def num_vehicles_in
       @vehicles_in.count
    end

end