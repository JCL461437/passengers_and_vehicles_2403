
class Passenger
    attr_reader :name, :age # :driver?, :drive

    def initialize(passenger_details)
        @name = passenger_details["name"]
        @age = passenger_details["age"].to_i
    end

    def adult?
        @age >= 18
    end

end