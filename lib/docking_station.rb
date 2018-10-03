require_relative 'bike'
require 'pry'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "This station is full" if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.size >= 20 ? true : false
  end

  def empty?
    @bikes.size == 0 ? true : false
  end

end
