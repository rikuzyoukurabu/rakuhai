class Building < ApplicationRecord
  belongs_to :area
  has_many :building_comments, dependent: :destroy
  attachment :image
  # N:1

  validates :building_name,presence: true
  validates :introduction,presence: true
  validates :building_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end
