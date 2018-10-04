require 'pry'

class Van

  def collect(docking_station)
    collected_bikes = docking_station.broken_bikes
    Garage.store(collected_bikes)
  end

end
