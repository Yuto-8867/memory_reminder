class CreateSharings < ActiveRecord::Migration[5.2]
  def change
    create_table :sharings do |t|
      t.string :name
      t.string :nickname
      t.string :favorite_food
      t.string :hobby
      t.string :profile_image_id
      t.string :type
      t.integer :user_id
      t.string :email

      t.timestamps
    end
  end
end
