class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :content
      t.string :name
      t.string :image_id
      t.string :title

      t.timestamps
    end
  end
end
