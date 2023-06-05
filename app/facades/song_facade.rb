class SongFacade
  attr_reader :weather,
              :hour

  def initialize(weather)
    @weather = weather
    @current_hour = Time.now.strftime('%H').to_i
  end



  def song_for_the_hour
    songs = get_songs_by_weather
    song = songs.select do |song|
      song.hour == @current_hour
    end.pop
  end

  private

  def get_songs_by_weather
    service = AcnhApiService.new
    songs = service.get_background_music
    by_weather = songs.map do |_, details|
      if details[:weather] == @weather
        Song.new(details)
      end
    end.compact!
  end
end
