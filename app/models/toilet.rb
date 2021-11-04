class Toilet < ApplicationRecord
  belongs_to :area
  has_many :toilet_comments, dependent: :destroy

  attachment :image
  # N:1

  validates :toilet_name,presence: true
  validates :introduction,presence: true
  validates :toilet_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end

