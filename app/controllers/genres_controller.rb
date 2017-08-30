class GenresController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params);
    # genre = Genre.create :name => params[:genre][:name], :description => params[:genre][:description]
    redirect_to genres_path
  end

  def destroy
  end

  def show
    @genres = Genre.all
    @links = Link.all
    @genre = Genre.find params[:id]
  end

  def edit
    @genre = Genre.find params[:id]
  end

  def update
    genre = Genre.find params[:id]
    genre.update genre_params
    redirect_to genre
  end

  def genre_params
    params.require(:genre).permit(:name, :description, :user)
  end

end
