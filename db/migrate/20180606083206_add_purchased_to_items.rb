class AddPurchasedToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :purchased, :boolean, default: false, null: false
  end
end
