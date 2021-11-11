class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @toilet_comments = @user.toilet_comments
    @building_comments = @user.building_comments
    @shop_comments = @user.shop_comments
    
  end

  def edit
  end
end
