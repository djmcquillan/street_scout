class RemoveVideoFromVideos < ActiveRecord::Migration
  def change
  	remove_column :videos, :video
  end
end
