class LinksController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
    @genres = Genre.all
  end

  def create
    # Link.create(link_params)
    # redirect_to links_path
    link = Link.create :link_display_name => params[:link][:link_display_name], :display_description => params[:link][:display_description]
    redirect_to links_path
  end

  def show
    @links = Link.all
    @genres = Genre.all
  end

  def destroy
  end

  def link_params
    params.require(:link).permit(:link_display_name, :genre_id, :display_description, :display_url)
  end

end
