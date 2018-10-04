require 'garage'

describe Garage do

  before :each do
    @ds1 = DockingStation.new
    @wkg_bike = Bike.new
    @broken_bike = Bike.new
    @ds1.dock(@broken_bike, false)
    @ds1.dock(@wkg_bike)
    @van = Van.new
    @van.collect(@ds)
  end

  # it 'fixes bikes that it stores' do
  #   expect(Garage.bikes[0]).to be_working
  # end
end
