class RemoveCommentIdFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :comment_id, :string
  end
end
