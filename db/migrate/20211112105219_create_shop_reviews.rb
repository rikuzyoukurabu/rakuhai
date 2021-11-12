class CreateShopReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_reviews do |t|
      t.integer :shop_id
      t.integer :user_id
      t.string :score

      t.timestamps
    end
  end
end
