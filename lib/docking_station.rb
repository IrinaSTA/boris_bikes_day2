require_relative 'bike'
require 'pry'

class DockingStation
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
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

  attr_reader :bikes

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
