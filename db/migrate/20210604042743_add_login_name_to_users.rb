class AddLoginNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_valid, :boolean
  end
end
