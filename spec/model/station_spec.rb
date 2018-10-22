require 'spec_helper'
require './app/models/station'

describe Station, type: :model do
  it 'exists' do
    data = {station_name: "Station 1",
            street_address: "123",
            fuel_type_code: "Electric",
            distance: .05,
            access_days_times: "open"
    }
   station = Station.new(data)
   expect(station).to be_a(Station)

   expect(station.name).to eq("Station 1")
   expect(station.address).to eq("123")
   expect(station.fuel_type).to eq("Electric")
   expect(station.distance).to eq(.05)
   expect(station.access_times).to eq("open")
  end
end
