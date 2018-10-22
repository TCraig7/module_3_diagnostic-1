require 'rails_helper'

describe NrelService do
  it 'exists' do
    service = NrelService.new
    expect(service).to be_a(NrelService)
  end
  it 'gets stations' do
    service = NrelService.new

    station_data = service.get_stations("80203")

    expect(station_data).to be_a(Array)
    expect(station_data.count).to eq(10)
    expect(station_data.first).has_key?(:station_name)
    expect(station_data.first.to be_a(String)
    expect(station_data.first[:station_name]).to be_a(String)
    expect(station_data.first[:street_address]).to be_a(String)
  end
end
