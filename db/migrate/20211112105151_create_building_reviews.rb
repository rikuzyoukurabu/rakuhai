class CreateBuildingReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :building_reviews do |t|
      t.integer :building_id
      t.integer :user_id
      t.string :score

      t.timestamps
    end
  end
end
