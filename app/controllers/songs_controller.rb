class SongsController < ApplicationController

  def new
    @song = Song.new
    @artist = Artist.find(params["artist_id"])
    @genre = Genre.find(params["genre_id"])
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to genre_artist_path(@song.artist_id)
    else
      redner 'new'
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
