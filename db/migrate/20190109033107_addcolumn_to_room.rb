class AddcolumnToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :description, :text, null:false
  end
end
