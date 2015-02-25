class Product < ActiveRecord::Base

  has_many :product_reviews
  belongs_to :company
  belongs_to :user

end
