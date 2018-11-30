require 'dockingStation'

describe DockingStation do
  let(:bike) {Bike.new}

  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike_collection) }

  it 'releases a working bike' do
    subject.dock(bike)
    released_bike = subject.release_bike

    expect(released_bike).to be_working
  end

  it 'returns a bike to the docking station' do
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'shows if a bike is docked' do
    subject.dock(bike)

    expect(subject.bike_collection).to eq [bike]
  end

  it 'does not release a bike if there are no bikes' do

    expect { subject.release_bike }.to raise_error('Not enough bikes')
  end

  it 'does not dock a bike if capacity is full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock(bike) }.to raise_error('At capacity!')
  end

  it 'after docking 20 times, should reach full capacity of 20' do
    # set up a docking station
    # checking 20 tiimes of docking a bike results in a capcity of 20
    20.times { subject.dock Bike.new }
    expect(subject.bike_collection.count).to be(20)
  end
end
