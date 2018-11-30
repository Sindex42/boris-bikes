require_relative 'bike'

class DockingStation

  attr_reader :bike_collection

  def initialize
    @bike_collection = []
    @max_capacity = 20
  end

  def release_bike
    raise 'Not enough bikes' if empty?
    @bike_collection.pop
  end

  def dock(bike)
    raise 'At capacity!' if full?
    @bike_collection << bike
  end

  private

  def full?
    @bike_collection.count == @max_capacity
  end

  def empty?
    @bike_collection.empty?
  end

end
