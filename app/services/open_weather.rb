class OpenWeatherService
  def get_weather(zip)
    get_json("data/2.5/weather?zip=#{zip},us&appid=#{api_key}")[:weather].first[:description]
  end

  private

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://api.openweathermap.org") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
