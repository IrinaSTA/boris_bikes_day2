require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns a working bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it 'look at current bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes' do
      expect { subject.release_bike }.to raise_error("No bike available")
    end

    it 'raises an error when it\'s full' do
      subject.capacity.times { subject.dock double(:bike) }
      expect { subject.dock(double(:bike)) }.to raise_error("This station is full")
    end

    it 'can create a station with user specified capacity' do
      ds = DockingStation.new(30)
      expect(ds.capacity).to eq(30)
    end

    it 'can create a station with user specified capacity' do
      expect{ DockingStation.new(30) }.to_not raise_error
    end

    it 'allows user to read the capacity when no capacity has been specified' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it 'report a bike as broken' do
      expect { subject.dock(double(:bike), false) }.to_not raise_error
    end

end
