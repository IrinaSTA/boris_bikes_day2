require 'pry'

class Garage

  @@bikes = []

  def self.bikes
    @@bikes
  end

  def self.store(bikes)
    @@bikes = @@bikes + bikes
    @@bikes.each do |bike|
      bike.working = true
    end
  end

  def self.release_bikes
    fixed_bikes = @@bikes
    @@bikes = []
    fixed_bikes
  end

end
