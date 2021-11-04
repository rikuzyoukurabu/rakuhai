class CreateShopComments < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_comments do |t|
      t.string :shop_id
      t.string :user_id
      t.text :comment
      t.string :image_id

      t.timestamps
    end
  end
end
