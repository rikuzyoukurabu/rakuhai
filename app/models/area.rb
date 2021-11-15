class Area < ApplicationRecord
  has_many :toilets
  has_many :buildings
  has_many :shops
  # 1:N
end
