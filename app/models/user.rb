class User < ActiveRecord::Base

  has_many :product_reviews
  has_many :company_reviews

end
