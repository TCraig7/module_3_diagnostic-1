class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["x-api-key"] = ENV["nrel_key"]
    end

    @station_results = conn.get("/api/alt-fuel-stations/v1/nearest?location=80203")
    binding.pry
  end
end
