class Service < ApplicationRecord
  belongs_to :user

  include PgSearch

  scope :sorted, ->{ order(delivery_city: :asc) }

  pg_search_scope :search_by_full_name,
                  against: [
                    :delivery_city,
                    :price
                  ],
                  using: {
                    tsearch: {
                      prefix: true,
                      normalization: 3
                    }
                  }

end
