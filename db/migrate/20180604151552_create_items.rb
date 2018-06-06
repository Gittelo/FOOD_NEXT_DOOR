class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.references :meal, foreign_key: true
      t.integer :status
      t.integer :doses

      t.timestamps
    end
  end
end
