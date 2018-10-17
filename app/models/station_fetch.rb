class StationFetch
  def initialize
  end

  def location_results
    conn = Faraday.new(url: "https://developer.nrel.gov")
    results = conn.get("/api/alt-fuel-stations/v1/nearest?location=80203&api_key=#{ENV["nrel_key"]}&format=json&radius=6.0")
    station_results = JSON.parse(results.body)
  end
end
