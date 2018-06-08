class Meal < ApplicationRecord

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }

    pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true }
    }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  has_many :items, dependent: :destroy
  has_many :users, through: :items
  has_many :reviews, dependent: :destroy
  has_many :line_items, dependent: :destroy
  belongs_to :cook, class_name: 'User', optional: true
  monetize :price_cents
end
