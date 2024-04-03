require './lib/passenger.rb'
require './lib/vehicle.rb'

class Park
    attr_reader :admission

    def initialize(admission)
        @admission = admission
    end

end