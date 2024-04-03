require './lib/passenger.rb'

class Vehicle
    attr_reader :year, :make, :model, :speeding, :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
    end

    def speeding?
        @speeding
    end

    def speed
        @speeding = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        count = 0
        @passengers.each do |passenger|
            if passenger.adult?
                count += 1
            end
        end
        count
    end

    # def num_adults
    #     @passengers.find_all do |passenger|
    #         passenger.adult?
    #     end.count
    # end

    # def num_adults
    #     @passengers.count do |passenger|
    #         passenger.adult?
    #     end
    # end
    
end