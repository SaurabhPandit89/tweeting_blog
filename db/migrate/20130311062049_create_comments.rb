class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :blog_comment
      t.references :blog

      t.timestamps
    end
  end
end
