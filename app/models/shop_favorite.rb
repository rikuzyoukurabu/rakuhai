class ShopFavorite < ApplicationRecord
  
  belongs_to :shop, optional: true
end
