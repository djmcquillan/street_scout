class AddUserToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :user_id, index: true, foreign_key: true
  end
end
