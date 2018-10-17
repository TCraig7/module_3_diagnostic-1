class SearchController < ApplicationController
  def index
    api = StationFetch.new(params[:location])
    results = api.conn
    @station_results = results.get("api/alt-fuel-stations/v1/nearest?location=80203")
    binding.pry
  end
end
