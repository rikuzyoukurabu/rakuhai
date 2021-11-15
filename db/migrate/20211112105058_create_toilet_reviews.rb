class CreateToiletReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :toilet_reviews do |t|
      t.integer :toilet_id
      t.integer :user_id
      t.string :score

      t.timestamps
    end
  end
end
