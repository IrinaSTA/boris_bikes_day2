require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it 'look at current bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.current_bike).to eq bike
    end

    it 'raises an error when no bikes' do
      expect { subject.release_bike }.to raise_error("No bike available")
    end
end
