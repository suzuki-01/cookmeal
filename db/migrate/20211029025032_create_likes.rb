class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.timestamps
      t.index [:user_id, :recipe_id], unique: true
    end
  end
end
