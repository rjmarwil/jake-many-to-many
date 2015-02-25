class Product < ActiveRecord::Base

  has_many :product_reviews
  belongs_to :company

  validates :company_id, presence: true

end
