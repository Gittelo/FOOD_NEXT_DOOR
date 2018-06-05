class AddPaymentToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :state, :string
    add_column :orders, :meal_sku, :string
    add_monetize :orders, :amount, currency: { present: false }
    add_column :orders, :payment, :jsonb
  end
end
