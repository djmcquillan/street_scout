class AddFiledateToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :filedata, :text
  end
end
