class BuildingComment < ApplicationRecord
  belongs_to :building
  belongs_to :user
  
  attachment :image

  validates :comment,presence: true
  validates :comment,length: {maximum: 800 }
end
