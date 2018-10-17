class StationFetch 
  def initialize(location)
    @location = location
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["nrel_key"]
    end
  end
end
