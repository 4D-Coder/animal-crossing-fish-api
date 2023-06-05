class Song
  attr_reader :id,
              :file_name,
              :hour,
              :weather,
              :music_uri

  def initialize(details)
    @id = details[:id]
    @file_name = details[:"file-name"]
    @hour = details[:hour]
    @weather = details[:weather]
    @music_uri = details[:music_uri]
  end
end
