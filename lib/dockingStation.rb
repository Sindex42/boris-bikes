require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_accessor :capacity

  def initialize
    @capacity = 0
    @max_capacity = 20
  end

  def release_bike
    raise 'Not enough bikes' if @capacity == 0
    @capacity -= 1
    Bike.new
  end

  def dock(bike)
    raise 'At capacity!' if @capacity == @max_capacity
    @capacity += 1
    @bike = bike
  end

end
