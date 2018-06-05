class AddPriceToWeekDays < ActiveRecord::Migration[5.2]
  def change
   add_monetize :week_days, :price, currency: { present: false }
  end
end
