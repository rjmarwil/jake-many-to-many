class CompanyReview < ActiveRecord::Base

    belongs_to :company
    belongs_to :user

    validates :company_id, :title, :description, :rating, :user_id, presence: true

end
