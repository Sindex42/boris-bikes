require 'dockingStation'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it 'releases a working bike' do
    bike = subject.release_bike

    expect(bike).to be_working
  end

  it 'returns a bike to the docking station' do
    bike = Bike.new

    expect(subject.dock(bike)).to eq bike
  end

  it 'shows if a bike is docked' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.bike).to eq bike
  end

end
