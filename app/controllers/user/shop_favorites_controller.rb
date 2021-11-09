class User::ShopFavoritesController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @favorite = current_user.favorites.new(shop_id: @shop.id)
    @favorite.save
    # redirect_to toilet_path(@shop)
  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    @favorite = current_user.favorites.find_by(shop_id: @shop.id)
    @favorite.destroy
    # redirect_to toilet_path(@shop)
  end
end
