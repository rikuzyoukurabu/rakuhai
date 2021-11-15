class Toilet < ApplicationRecord
  belongs_to :area
  has_many :toilet_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :toilet_reviews, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
  def avg_score
    unless self.toilet_reviews.empty?
      toilet_reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
  
  def review_score_percentage
    unless self.toilet_reviews.empty?
      toilet_reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
  
  attachment :image
  # N:1

  validates :toilet_name,presence: true
  validates :introduction,presence: true
  validates :toilet_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end

