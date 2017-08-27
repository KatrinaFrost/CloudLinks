class GenresController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @genres = Genre.all
  end

  def create
    # FIXME do we need to assign the users id to the new gener?
    genre = Genre.create :name => params[:name]
    redirect_to genre_path(genre.id)
    # redirect_to planet_path(planet.id)
  end

  def destroy
  end

end
