class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.integer :grams_per_dose
      t.text :ingredients

      t.timestamps
    end
  end
end
