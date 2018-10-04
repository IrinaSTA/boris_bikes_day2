require 'van'
require 'garage'
require 'docking_station'
require 'bike'

describe Van do

  before :each do
    @ds1 = DockingStation.new
    @wkg_bike = Bike.new
    @broken_bike = Bike.new
    @ds1.dock(@broken_bike, false)
    @ds1.dock(@wkg_bike)
    @van = Van.new
  end

  it { is_expected.to respond_to :collect }

  it 'takes broken bikes from a docking station to the Garage' do
    @van.collect(@ds1)
    expect(Garage.bikes[0]).to be_an_instance_of(Bike)
  end

  it 'Garage fixes the bikes' do
    @van.collect(@ds1)
    expect(Garage.bikes[0]).to be_working
  end

  it 'distributes fixed bikes to docking station' do
    @ds2 = DockingStation.new
    @van.collect(@ds1)
    @van.distribute(@ds2)
    expect(@ds2.bikes[0]).to be_an_instance_of(Bike)
  end

end
