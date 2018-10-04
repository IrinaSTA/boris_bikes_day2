require 'pry'

class Van

  def collect(docking_station)
    collected_bikes = docking_station.broken_bikes
    Garage.store(collected_bikes)
  end

  def distribute(docking_station)
    bikes = Garage.release_bikes
    docking_station.bikes = docking_station.bikes + bikes
  end

end
