class WeekDay < ApplicationRecord
  belongs_to :meal
  monetize :price_cents
end
