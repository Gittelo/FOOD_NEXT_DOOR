class AddCookToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :cook_id, :integer
    add_index :meals, :cook_id
  end
end
