class Item < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  monetize :amount_cents
end
