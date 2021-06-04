class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :favorite_food, :string
    add_column :users, :hobby, :string
    add_column :users, :favorite_time, :string
    add_column :users, :profile_image_url, :string
  end
end
