class RemoveShopIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :shop_id, :integer
  end
end
