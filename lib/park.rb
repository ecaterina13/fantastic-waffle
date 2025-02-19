class Park 
  attr_reader :name, :price, :vehicles_park, :passengers_park
  
  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_park = []
    @passengers_park = []
  end

  def add_vehicle(vehicle)
    @vehicles_park << vehicle
  end

  def add_passenger(passenger)
    @passengers_park << passenger
   #binding.pry
  end
      #binding.pry
  def adult
   @passengers_park.find_all do |passenger|
 
   end
  end
end