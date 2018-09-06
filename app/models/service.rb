class Service < ApplicationRecord
  belongs_to :user

  def self.search(search)

      where("delivery_city Like ?", "%#{search}%")

  end

end
