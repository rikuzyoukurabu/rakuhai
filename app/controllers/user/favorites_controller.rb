class User::FavoritesController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @favorite = current_user.favorites.new(toilet_id: @toilet.id)
    @favorite.save!
    redirect_to areas_path
  end

  def destroy
    @toilet = Toilet.find(params[:toilet_id])
    @favorite = current_user.favorites.find_by(toilet_id: @toilet.id)
    @favorite.destroy
    redirect_to areas_path
  end
end
