class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  monetize :total_price_cents
  enum status: [:pending, :paid, :canceled, :delivered]
end
