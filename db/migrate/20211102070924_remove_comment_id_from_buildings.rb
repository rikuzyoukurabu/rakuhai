class RemoveCommentIdFromBuildings < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :comment_id, :string
  end
end
