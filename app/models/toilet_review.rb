class ToiletReview < ApplicationRecord
  belongs_to :user
  belongs_to :toilet, optional: true
end
