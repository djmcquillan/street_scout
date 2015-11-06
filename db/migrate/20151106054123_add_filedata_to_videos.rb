class AddFiledataToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :filedata, :string
  end
end
