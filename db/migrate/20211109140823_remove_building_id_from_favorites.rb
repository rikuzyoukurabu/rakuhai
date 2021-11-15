class RemoveBuildingIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :building_id, :integer
  end
end
