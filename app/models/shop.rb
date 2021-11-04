class Shop < ApplicationRecord
  belongs_to :area
  attachment :image
  # N:1
  
  validates :shop_name,presence: true
  validates :introduction,presence: true
end
