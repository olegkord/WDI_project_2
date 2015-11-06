class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
    @genre = Genre.find(params["genre_id"])
  end

end
