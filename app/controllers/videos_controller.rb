class VideosController < ApplicationController
  def index
  	@videos = Video.all
  end

  def show
	@video = video.find(params[:id])  
  end
end
