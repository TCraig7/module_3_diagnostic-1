class NrelService
  def initialize
  end

  def get_stations(zip, radius = 6.0)
    get_json("api/alt-fuel-stations/v1/nearest?location=#{zip}&api_key=#{ENV["nrel_key"]}&format=json&radius=#{radius}")[:fuel_stations]
  end

  private

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
