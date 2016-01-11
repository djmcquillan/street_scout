class VideosController < ApplicationController
  # before_filter :authorize, only: [:edit, :update]
 

  def index
  	@videos = Video.sorted_by_votes
  end

  def show
	  @video = Video.find(params[:id])  
  end

  def new
  	@video = Video.new
  end

  def create
    arg = Video.new(video_params)
    HTTMultiParty.post('https://api.vid.me/video/upload', :query => {:filedata => File.new(arg)}, :headers => { 'Content-Type' => 'video/x-msvideo'}, :detect_mime_type => true)
    puts("video posted to vidme website")
   #  @video = Video.new(video_params)
   #  @video.user_id = current_user.id
  	# if @video.save
   #    flash[:success] = "Video has been uploaded"
  	# 	redirect_to current_user
  	# else
  	# 	render 'new'
  	# end
  end


  def edit
    @video = Video.find(params[:id])
  end


  def update
      @video = Video.find(params[:id])
      if @video.update_attributes(video_params)
        flash[:success] = "Video updated"
        redirect_to current_user
      else
        render 'edit'
      end
  end



  def destroy
      Video.find(params[:id]).destroy
      redirect_to current_user
  end
    # def date_published
    #   created_at.localtime.strftime("%A, %B, %-d, %Y at %l:%M %p")
    # end

#allow user to upvote on videos  in gallery
  def upvote
    @video = Video.find(params[:id])
    @video.upvote_by current_user
    redirect_to videos_path
  end

  #allow user to downvote on videos  in gallery
  def downvote
    @video = Video.find(params[:id])
    @video.downvote_by current_user
    redirect_to videos_path
  end

private
def video_params
      params.require(:video).permit(:title, :description, :url, :remote_video_url) #,:filedata 
  end
end
