class AddAddressToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :address, :string
    add_column :meals, :latitude, :float
    add_column :meals, :longitude, :float
  end
end
