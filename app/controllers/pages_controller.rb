class PagesController < ApplicationController

  def feed
    @genres = Genre.all
    @links = Link.all
  end

  def home
  end
end
