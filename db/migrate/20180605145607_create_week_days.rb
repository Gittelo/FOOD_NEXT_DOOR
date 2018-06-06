class CreateWeekDays < ActiveRecord::Migration[5.2]
  def change
    create_table :week_days do |t|
      t.references :meal, foreign_key: true
      t.datetime :pick_up_time_start
      t.datetime :pick_up_time_end
      t.datetime :last_order_time
      t.integer :doses
      t.datetime :date


      t.timestamps
    end
  end
end
