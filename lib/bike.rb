class Bike
  def initialize
    @status = true
  end

  def working?
    @status
  end

  def working=(status)
    @status = status
  end
end
