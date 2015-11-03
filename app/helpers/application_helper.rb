module ApplicationHelper
# this method will embed the code from the partial
  def upload_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end 
end
