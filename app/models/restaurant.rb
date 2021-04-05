class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy


  def reviews
    Review.where(restaurant_id: self.id)
  end
end
