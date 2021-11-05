class ShopComment < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  attachment :image

  validates :comment,presence: true
  validates :comment,length: {maximum: 800 }
end
