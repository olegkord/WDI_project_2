class ArtistsController < ApplicationController

  before_action :authorize

  def new
    @artist = Artist.new
    @genre = Genre.find(params["genre_id"])
  end

  def create
    @artist = Artist.new(artist_params)
    genre_id = Genre.find(params["genre_id"])
    @artist.genres.push(genre_id)
    if @artist.save
      redirect_to genre_path(genre_id)
    else
      render 'new'
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @genre = Genre.find(params[:genre_id])
  end


  private
  def artist_params
    params.require(:artist).permit(
      :artist_name,
      :artist_bio,
      :img_url,
    )
  end
end
