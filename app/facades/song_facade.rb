class SongFacade
  attr_reader :weather,
              :hour

  def initialize(weather)
    @weather = weather
  end

  def get_songs_by_weather
    service = AcnhApiService.new
    songs = service.get_background_music
  end
end
