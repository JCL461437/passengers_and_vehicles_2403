
class Passenger
    attr_reader :name, :age

    def initialize(passenger_details)
        @name = passenger_details["name"]
        @age = passenger_details["age"].to_i
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def driver?
        @driver
    end

    def drive
        if adult? 
            @driver = true
        end
    end

end