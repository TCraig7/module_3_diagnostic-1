require 'rails_helper'

describe StationFacade do
  it "exists" do
    station_facade = StationFacade.new(80203)

    expect(station_facade).to be_a(StationFacade)
  end

  it 'has stations' do
    station_facade = StationFacade.new(80203)

    expect(station_facade.stations.count).to eq(10)
    expect(station_facade.stations).to be_a(Array)
    expect(station_facade.stations.first).to be_a(Station)
    expect(station_facade.stations.last).to be_a(Station)
  end
end
