class Api::V1::HomeController < ApplicationController
  def music
    facade = SongFacade.new(params['weather'])
    song = facade.song_for_the_hour
    render json: SongSerializer.new(song).serializable_hash, status: 200
  end
end
