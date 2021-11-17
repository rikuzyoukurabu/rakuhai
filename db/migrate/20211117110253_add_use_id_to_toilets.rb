class AddUseIdToToilets < ActiveRecord::Migration[5.2]
  def change
    add_column :toilets, :user_id, :integer
  end
end
