class User::BuildingFavoritesController < ApplicationController
  def create
    @building = Building.find(params[:building_id])
    @favorite = current_user.building_favorites.new(building_id: @building.id)
    @favorite.save
    # redirect_to shop_path(@shop)
  end

  def destroy
    @building = Building.find(params[:building_id])
    @favorite = current_user.building_favorites.find_by(building_id: @building.id)
    @favorite.destroy
    # redirect_to shop_path(@shop)
  end
end
