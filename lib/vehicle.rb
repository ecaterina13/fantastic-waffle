class Vehicle
  attr_reader :year, :make, :model, :passengers
  attr_accessor :speed

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = 0
    @passengers = []
  end

  def speeding?
    @speed > 30
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.count do |passenger|
      passenger.age >= 18
    end
  end
end