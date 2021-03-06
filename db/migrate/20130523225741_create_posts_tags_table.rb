class CreatePostsTagsTable < ActiveRecord::Migration
  def change
    create_table :posts_tags, :id => false do |t|
      t.references :post
      t.references :tag

      t.timestamps
    end
    add_index :posts_tags, [:post_id, :tag_id], :unique => true
  end
end
