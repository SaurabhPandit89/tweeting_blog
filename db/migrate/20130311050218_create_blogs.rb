class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :post
      t.text :comment
      t.integer :parent_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
