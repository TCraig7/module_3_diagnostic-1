class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov")
    api_key = "IaGiwuccWzp5LD7AlQOeYJruiqnUq0B3LZ91xYF4"
    results = conn.get("/api/alt-fuel-stations/v1/nearest?location=80203&api_key=#{api_key}&format=json")
    @station_results = JSON.parse(results.body)
    binding.pry
  end
end
# Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest?location=80203&api_key=IaGiwuccWzp5LD7AlQOeYJruiqnUq0B3LZ91xYF4&format=json")
