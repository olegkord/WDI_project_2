class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params["artist_id"]
    @song.genre_id = params["genre_id"]

    if @song.save
      # redirect_to {
      #   controller: "artists",
      #   action: "show",
      #   song_id: "@song.id",
      #   id: "#{params["artist_id"]}",
      #   genre_id: "#{params["genre_id"]}"
      # }
      redirect_to genre_artist_path(@song.id, params["artist_id"])
    else
      render 'new'
    end
  end

  private
  def song_params
    params.require(:song).permit(
      :song_name,
      :song_comment,
      :scloud_embed
    )
  end
end
