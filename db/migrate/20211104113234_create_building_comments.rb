class CreateBuildingComments < ActiveRecord::Migration[5.2]
  def change
    create_table :building_comments do |t|
      t.string :building_id
      t.string :user_id
      t.text :comment
      t.string :image_id

      t.timestamps
    end
  end
end
