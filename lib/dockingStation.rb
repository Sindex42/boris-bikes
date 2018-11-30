require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
    @max_capacity = 20
  end

  def release_bike
    raise 'Not enough bikes' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'At capacity!' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == @max_capacity
  end

  def empty?
    @bikes.empty?
  end

end
