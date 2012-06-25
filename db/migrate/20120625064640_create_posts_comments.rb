class CreatePostsComments < ActiveRecord::Migration
  def change
    create_table :posts_comments do |t|
      t.text :comment
      t.references :post

      t.timestamps
    end
    add_index :posts_comments, :post_id
  end
end
