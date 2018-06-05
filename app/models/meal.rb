class Meal < ApplicationRecord

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  has_many :reviews, dependent: :destroy
  belongs_to :cook, class_name: 'User', optional: true
  monetize :price_cents
end
