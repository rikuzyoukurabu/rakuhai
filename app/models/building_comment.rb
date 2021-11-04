class BuildingComment < ApplicationRecord
  belongs_to :building

  attachment :image

  validates :comment,presence: true
  validates :comment,length: {maximum: 800 }
end
