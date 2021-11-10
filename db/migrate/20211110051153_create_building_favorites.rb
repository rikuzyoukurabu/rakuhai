class CreateBuildingFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :building_favorites do |t|
      t.integer :user_id
      t.integer :building_id

      t.timestamps
    end
  end
end
