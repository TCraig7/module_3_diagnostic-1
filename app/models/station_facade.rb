class StationFacade
  def initialize(zip)
    @zip = zip
  end

  def stations
    station_service.get_stations(@zip).each do |station_data|
      Station.new(station_data)
    end
  end

  def weather
    Weather.new(weather_service.get_weather(@zip))
  end

  private

  def station_service
    NrelService.new
  end

  def weather_service
    OpenWeatherService.new
  end
end
