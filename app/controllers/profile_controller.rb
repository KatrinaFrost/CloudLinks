class ProfileController < ApplicationController

  def index
    @links = Link.all
    @genres = Genre.all
    @users = User.all
    if @genres and params[:genre_id]
      @genre = Genre.find params[:genre_id]
    end
  end
end
