class RemoveFiledateFromVideos < ActiveRecord::Migration
  def change
  	remove_column :videos, :filedata
  end
end
