require_relative 'bike'

class DockingStation
  attr_accessor :current_bike

  def release_bike
    raise "No bike available" unless @current_bike
    @current_bike
  end

  def dock(bike)
    raise "This station is full" unless @current_bike == nil
    @current_bike = bike
  end
end
