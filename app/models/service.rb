class Service < ApplicationRecord
  has_many :users

  def self.search(search)
    
      where("delivery_city Like ?", "%#{search}%")

  end

end
