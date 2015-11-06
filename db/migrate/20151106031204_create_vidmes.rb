class CreateVidmes < ActiveRecord::Migration
  def change
    create_table :vidmes do |t|

      t.timestamps null: false
    end
  end
end
