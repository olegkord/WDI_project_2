class GenresController < ApplicationController

  before_action :authorize, except: [:index,:show]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.user_id = current_user.id
    if @genre.save
      redirect_to '/genres'
    else
      render 'new'
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private
  def genre_params
    params.require(:genre).permit(
      :genre_name,
      :genre_description,
      :img_url,
    )
  end
end
