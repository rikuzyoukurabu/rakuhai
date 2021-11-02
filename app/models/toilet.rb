class Toilet < ApplicationRecord
  belongs_to :area
  attachment :image
  # N:1
end

