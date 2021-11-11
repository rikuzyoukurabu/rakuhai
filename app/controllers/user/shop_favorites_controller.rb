class User::ShopFavoritesController < ApplicationController
  before_action :authenticate_user!
  def create
    @shop = Shop.find(params[:shop_id])
    @favorite = current_user.shop_favorites.new(shop_id: @shop.id)
    @favorite.save
    # redirect_to shop_path(@shop)
  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    @favorite = current_user.shop_favorites.find_by(shop_id: @shop.id)
    @favorite.destroy
    # redirect_to shop_path(@shop)
  end
end
