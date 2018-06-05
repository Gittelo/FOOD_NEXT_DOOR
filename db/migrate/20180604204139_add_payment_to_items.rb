class AddPaymentToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :state, :string
    add_column :items, :meal_sku, :string
    add_monetize :items, :amount, currency: { present: false }
    add_column :items, :payment, :jsonb
  end
end
