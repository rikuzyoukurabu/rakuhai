class Building < ApplicationRecord
  belongs_to :area
  has_many :building_comments, dependent: :destroy
  has_many :building_favorites, dependent: :destroy
  has_many :building_reviews, dependent: :destroy

  def favorited_by?(user)
    building_favorites.where(user_id: user.id).exists?
  end
  
  def avg_score
    unless self.building_reviews.empty?
      building_reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
  
  def review_score_percentage
    unless self.building_reviews.empty?
      building_reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end

  attachment :image
  # N:1

  validates :building_name,presence: true
  validates :introduction,presence: true
  validates :building_name,length: {maximum: 30 }
  validates :introduction,length: {maximum: 100 }
end
