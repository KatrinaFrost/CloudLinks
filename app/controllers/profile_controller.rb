class ProfileController < ApplicationController

  def index
    @links = Link.all
    @genres = Genre.all
    @users = User.all
    if params[:id]
      @genre = Genre.find params[:id]
    else
      @genre = Genre.find 1
    end
  end
end
