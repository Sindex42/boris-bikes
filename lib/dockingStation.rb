require_relative 'bike'

class DockingStation
  MAX_CAPACITY = 20

  attr_reader :bike_collection

  def initialize
    @bike_collection = []

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
    @bike_collection.count == MAX_CAPACITY
  end

  def empty?
    @bike_collection.empty?
  end

end
