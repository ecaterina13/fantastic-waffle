require './lib/vehicle'
require './lib/passenger'
RSpec.describe Vehicle do
  before(:each) do
  @vehicle = Vehicle.new("2001", "Honda", "Civic") 
  end
  it 'has attributes' do 
    expect(@vehicle.year).to eq("2001")
    expect(@vehicle.make).to eq("Honda")
    expect(@vehicle.model).to eq("Civic")
  end 


end