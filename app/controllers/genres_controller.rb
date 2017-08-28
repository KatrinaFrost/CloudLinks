class GenresController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @genres = Genre.all
  end

  def new
    @genre = @genre.new
  end

  def create
  genre = Genre.create :name => params[:name]
    redirect_to genres_path
    # redirect_to planet_path(planet.id)
  end

  def destroy
  end

end
