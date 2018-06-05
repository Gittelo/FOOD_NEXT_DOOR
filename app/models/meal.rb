class Meal < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  has_many :reviews, dependent: :destroy
  has_many :line_items, dependent: :destroy
  belongs_to :cook, class_name: 'User', optional: true
  monetize :price_cents
end
