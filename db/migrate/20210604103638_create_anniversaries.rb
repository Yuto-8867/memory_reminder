class CreateAnniversaries < ActiveRecord::Migration[5.0]
  def change
    create_table :anniversaries do |t|
      t.integer :user_id
      t.string :content
      t.date :date

      t.timestamps
    end
  end
end
