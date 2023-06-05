class AcnhApiService
  def get_background_music
    request = conn.get('v1/backgroundmusic/')
  end

  def conn
    Faradaynew.new(url: 'http://acnhapi.com')
  end
end
