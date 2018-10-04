require_relative 'bike'
require 'pry'

class DockingStation
  attr_reader :capacity
  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bike available" if empty?
    @bikes.reverse.each do |bike|
      if bike.working?
        return bike
      end
    end
  end

  def dock(bike, status = true)
    fail "This station is full" if full?
    bike.working = status
    @bikes.push(bike)
  end

  def broken_bikes
    broken_bikes = @bikes.select {|bike| !bike.working?}
    @bikes = @bikes - broken_bikes
    broken_bikes
  end

  private

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
