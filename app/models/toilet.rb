class Toilet < ApplicationRecord
  belongs_to :area
  has_many :toilet_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  attachment :image
  # N:1

  validates :toilet_name,presence: true
  validates :introduction,presence: true
  validates :toilet_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end

