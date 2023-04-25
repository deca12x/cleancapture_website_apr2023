class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.integer :likes

      t.timestamps
    end
  end
end
