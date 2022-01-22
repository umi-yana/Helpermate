class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :post_image_id
      t.integer :post_tag_id
      t.timestamps
    end
  end
end
