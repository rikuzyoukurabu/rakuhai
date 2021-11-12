class ShopReview < ApplicationRecord
  belongs_to :user
  belongs_to :shop, optional: true
end
