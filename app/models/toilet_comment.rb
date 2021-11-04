class ToiletComment < ApplicationRecord
  belongs_to :toilet

  attachment :image

  validates :comment,presence: true
  validates :comment,length: {maximum: 800 }
end
