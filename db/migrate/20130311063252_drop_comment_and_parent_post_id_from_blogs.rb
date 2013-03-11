class DropCommentAndParentPostIdFromBlogs < ActiveRecord::Migration
  def up
    remove_column :blogs, :comment
    remove_column :blogs, :parent_post_id
  end

  def down
    add_column :blogs, :comment, :text
    add_column :blogs, :parent_post_id, :integer
  end
end
