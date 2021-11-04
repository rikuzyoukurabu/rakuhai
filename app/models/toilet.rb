class Toilet < ApplicationRecord
  belongs_to :area
  attachment :image
  # N:1
  
  validates :toilet_name,presence: true
  validates :introduction,presence: true
end

