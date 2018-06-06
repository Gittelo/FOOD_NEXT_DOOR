class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :meal, foreign_key: true
      t.integer :status
      t.integer :doses
      t.monetize :item_price, currency: { present: false}
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
