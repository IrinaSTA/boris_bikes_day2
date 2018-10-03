require_relative 'bike'
require 'pry'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "This station is full" if @bikes.size >= 20
    @bikes.push(bike)
  end
end
