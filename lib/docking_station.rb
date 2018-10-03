require_relative 'bike'
require 'pry'

class DockingStation
  attr_accessor :current_bike

  def initialize
    @current_bike = []
  end

  def release_bike
    raise "No bike available" unless @current_bike.size > 0
    @current_bike.pop
  end

  def dock(bike)
    raise "This station is full" unless @current_bike.size < 20
    @current_bike.push(bike)
  end
end
