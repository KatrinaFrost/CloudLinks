class ProfileController < ApplicationController

  def index
    @links = Link.all
    @genres = Genre.all
    @users = User.all
    if params[:genre_id]
      @genre = Genre.find params[:genre_id]
    else
      @genre = Genre.find 1
    end
  end
end
