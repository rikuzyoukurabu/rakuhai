class RemoveCommentIdFromToilets < ActiveRecord::Migration[5.2]
  def change
    remove_column :toilets, :comment_id, :string
  end
end
