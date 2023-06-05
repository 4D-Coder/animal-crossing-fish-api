class Api::V1::HomeController < ApplicationController
  def music
    song = SongFacade.new(params['weather'])
    render json: SongSerializer.new(song).serializable_hash
  end
end
