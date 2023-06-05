class AcnhApiService
  def get_background_music
    response = conn.get('v1/backgroundmusic/')

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://acnhapi.com')
  end
end
