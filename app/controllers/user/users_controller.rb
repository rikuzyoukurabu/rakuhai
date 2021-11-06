class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @toilet_comments = @user.toilet_comments
  end

  def edit
  end
end
