class VideosController < ApplicationController
  # before_filter :authorize, only: [:edit, :update]

  def index
  	@videos = Video.all
  end

  def show
	@video = Video.find(params[:id])  
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(video_params)
    @video.user_id = current_user.id
  	if @video.save
      flash[:success] = "Video has been uploaded"
  		redirect_to videos_path
  	else
  		render 'new'
  	end

    def date_published
      created_at.localtime.strftime("%A, %B, %-d, %Y at %l:%M %p")
    end
  end

private
def video_params
      params.require(:video).permit(:title, :description, :url, :remote_video_url)
  end
end
