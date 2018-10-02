require_relative 'bike'

class DockingStation
  attr_accessor :current_bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @current_bike = bike
  end
end
