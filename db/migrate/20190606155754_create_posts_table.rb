class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :comment_type
      t.string :description
      t.integer :user_id
    end
  end
end
