class ProfileController < ApplicationController

  def index
    @links = Link.all
  end

  def create
  end

end
