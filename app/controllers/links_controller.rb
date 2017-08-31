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
    link = Link.create(link_params)
    #link = Link.create :genre_id => params[:link][:link_display_name], :link_display_name => params[:link][:link_display_name], :display_description => params[:link][:display_description]
    redirect_to profile_path
  end

  def show
    @links = Link.all
    @genres = Genre.all
  end

  def edit
    @link = Link.find params[:id]
  end

  def update
    link = Link.find params[:id]
    link.update link_params
    # redirect_to link
    redirect_to profile_path
  end

  def link_params
    params.require(:link).permit(:link_display_name, :genre_id, :display_description, :display_url)
  end

end
