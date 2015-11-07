class SongsController < ApplicationController

def new
  @song = Song.new
  @artist = Artist.find(params["artist_id"])
  @genre = Genre.find(params["genre_id"])
end

def create

end

end
