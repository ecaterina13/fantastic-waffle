require 'rspec'
require './lib/passenger'


RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it 'exists' do
    expect(@charlie).to be_a(Passenger)
    expect(@taylor).to be_a(Passenger)
  end
  it "has info" do 
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
    expect(@taylor.name).to eq("Taylor")
    expect(@taylor.age).to eq(12)
  end
  it 'checks if a passenger is an adult' do
    expect(@charlie.adult?).to eq(true)
    expect(@taylor.adult?).to eq(false)
  end

  
  it 'determines if passenger is a driver' do
    expect(@charlie.driver?).to be false
    
    @charlie.drive
   #come back to write another test for this
    expect(@charlie.driver?).to be true
  end
end