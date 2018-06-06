class Item < ApplicationRecord
  belongs_to :order
  belongs_to :meal
  monetize :item_price_cents
end
