class ProfileController < ApplicationController

  def index
    @links = Link.all
    @genres = Genre.all
    @users = User.all
  end
end
