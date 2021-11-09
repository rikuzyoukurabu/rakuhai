class Building < ApplicationRecord
  belongs_to :area
  has_many :building_comments, dependent: :destroy
  has_many :building_favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  attachment :image
  # N:1

  validates :building_name,presence: true
  validates :introduction,presence: true
  validates :building_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end
