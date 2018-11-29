require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
    @max_capacity = 20
  end

  def release_bike
    raise 'Not enough bikes' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'At capacity!' if @bikes.count == @max_capacity
    @bikes << bike
  end

  private

  def full?

  end

end
