class User::FavoritesController < ApplicationController
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @favorite = current_user.favorites.new(toilet_id: @toilet.id)
    @favorite.save
    # redirect_to toilet_path(@toilet)
  end

  def destroy
    @toilet = Toilet.find(params[:toilet_id])
    @favorite = current_user.favorites.find_by(toilet_id: @toilet.id)
    @favorite.destroy
    # redirect_to toilet_path(@toilet)
  end
end
