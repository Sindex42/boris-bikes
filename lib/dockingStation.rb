require_relative 'bike'

class DockingStation

  attr_reader :bikes
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = 0
    @max_capacity = 20
  end

  def release_bike
    raise 'Not enough bikes' if @capacity == 0
    @capacity -= 1
    @bikes.pop
  end

  def dock(bike)
    raise 'At capacity!' if @capacity == @max_capacity
    @capacity += 1
    @bikes << bike
  end

end
