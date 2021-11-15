class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :toilet, optional: true
  belongs_to :building, optional: true

end
