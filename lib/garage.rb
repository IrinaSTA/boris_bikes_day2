require 'pry'

class Garage

  @@bikes = []

  def self.bikes
    @@bikes
  end

  def self.store(bikes)
    @@bikes = @@bikes + bikes
  end

end
