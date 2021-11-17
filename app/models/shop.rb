class Shop < ApplicationRecord
  belongs_to :area
  belongs_to :user
  has_many :shop_comments, dependent: :destroy
  has_many :shop_favorites, dependent: :destroy
  has_many :shop_reviews, dependent: :destroy


  def favorited_by?(user)
    shop_favorites.where(user_id: user.id).exists?
  end

  def avg_score
    unless self.shop_reviews.empty?
      shop_reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.shop_reviews.empty?
      shop_reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
  attachment :image
  # N:1

  validates :shop_name,presence: true
  validates :introduction,presence: true
  validates :shop_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end
