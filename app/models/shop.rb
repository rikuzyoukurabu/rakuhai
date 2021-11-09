class Shop < ApplicationRecord
  belongs_to :area
  has_many :shop_comments, dependent: :destroy
  has_many :shop_favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  attachment :image
  # N:1

  validates :shop_name,presence: true
  validates :introduction,presence: true
  validates :shop_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end
