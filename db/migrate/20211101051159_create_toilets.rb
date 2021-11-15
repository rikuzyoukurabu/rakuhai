class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :toilet_name
      t.string :introduction
      t.string :image_id
      t.string :area_id
      t.string :comment_id
      

      t.timestamps
    end
  end
end
