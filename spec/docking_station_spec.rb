require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

    it 'returns a bike' do
      expect(subject.release_bike).to be_woke
    end

end
