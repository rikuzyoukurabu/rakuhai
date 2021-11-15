class BuildingFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :buolding, optional: true
end
