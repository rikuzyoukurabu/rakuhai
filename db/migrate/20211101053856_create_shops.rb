class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :area_id
      t.string :comment_id
      t.string :shop_name
      t.string :introduction
      t.string :image_id

      t.timestamps
    end
  end
end
