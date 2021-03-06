class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :toilet_comments, dependent: :destroy
  has_many :building_comments, dependent: :destroy
  has_many :shop_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :shop_favorites, dependent: :destroy
  has_many :building_favorites, dependent: :destroy
  has_many :toilet_reviews, dependent: :destroy
  has_many :shop_reviews, dependent: :destroy
  has_many :building_reviews, dependent: :destroy
  has_many :toilets, dependent: :destroy
  has_many :buildings, dependent: :destroy
  has_many :shops, dependent: :destroy


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'guest@example.com', name: "ゲスト") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
