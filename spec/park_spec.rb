require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'
require 'pry'

RSpec.describe Park do
  before(:each) do
    @park = Park.new("great sand dunes", 30)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})  
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

  end

  it "exists" do
    expect(@park).to be_a(Park)
  end

  it "tracks the vehicles" do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @park.add_vehicle(@vehicle)
    expect(@park.vehicles_park).to eq([@vehicle])
  end

  it "counts the passengers" do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})  
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    @park.add_passenger(@charlie)
    @park.add_passenger(@jude)
    @park.add_passenger(@taylor)

    expect(@park.passengers_park).to eq([@charlie, @jude, @taylor])
  end
   
#   it "returns the adults" do
#     @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
#     @jude = Passenger.new({"name" => "Jude", "age" => 20})  
#     @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

#     expect(@park.adult).to eq([@charlie, @jude])
#   end 
end