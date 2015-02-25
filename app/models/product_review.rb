class ProductReview < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :title, :description, :rating, :product_id, :user_id, presence: true

end
