class DropVidmes < ActiveRecord::Migration
  def change
  	drop_table :vidmes
  end
end
