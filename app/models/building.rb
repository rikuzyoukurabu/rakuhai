class Building < ApplicationRecord
  belongs_to :area
  attachment :image
  # N:1
  
  validates :building_name,presence: true
  validates :introduction,presence: true
end
