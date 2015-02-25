class ProductReview < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :company_id, :title, :description, :rating, :user_id, presence: true

end
