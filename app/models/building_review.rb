class BuildingReview < ApplicationRecord
  belongs_to :user
  belongs_to :building, optional: true
end
