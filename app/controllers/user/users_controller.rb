class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @toilet_comments = @user.toilet_comments
    @building_comments = @user.building_comments
    @shop_comments = @user.shop_comments

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = '編集が完了しました！'
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name,:email)
  end
end
