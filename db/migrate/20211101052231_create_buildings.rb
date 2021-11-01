class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :area_id
      t.string :comment_id
      t.string :building_name
      t.string :introduction
      t.string :image_id

      t.timestamps
    end
  end
end
