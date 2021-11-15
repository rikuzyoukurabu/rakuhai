class CreateToiletComments < ActiveRecord::Migration[5.2]
  def change
    create_table :toilet_comments do |t|
      t.string :toilet_id
      t.string :user_id
      t.text :comment
      t.string :image_id

      t.timestamps
    end
  end
end
