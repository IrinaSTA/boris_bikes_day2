require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

    it 'returns a bike' do
      expect(subject.release_bike).to be_working
    end
    # it 'bike docked' do
    #   expect(subject.dock(Bike.new)).to eq subject.current_bike
    # end

    it { is_expected.to respond_to :dock }
    it 'look at current bike' do
      bikey = Bike.new
      subject.dock(bikey)
      expect(subject.current_bike).to eq bikey
    end
end
