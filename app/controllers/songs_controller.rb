class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params["artist_id"]
    @song.genre_id = params["genre_id"]
    binding.pry
    @song.user_id = current_user.id
    if @song.save
      redirect_to genre_artist_path(@song.id, params["artist_id"])
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params["id"])
  end

  def update
    @song = Song.find(params["id"])
    if @song.update(song_params)
      redirect_to genre_artist_path(@song.id, params["artist_id"])
    else
      render 'edit'
    end
  end

  def destroy

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
