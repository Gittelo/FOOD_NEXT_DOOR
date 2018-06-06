class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :status, default: 0
      t.monetize :total_price, currency: { present: false}
      t.timestamps
    end
  end
end
