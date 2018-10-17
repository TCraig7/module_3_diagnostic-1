class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov")
    results = conn.get("/api/alt-fuel-stations/v1/nearest?location=80203&api_key=#{ENV["nrel_key"]}&format=json")
    @station_results = JSON.parse(results.body)
    binding.pry
  end
end
