class Admin::BuildingsController < ApplicationController
  before_action :authenticate_admin!

  def show
    @building = Building.find(params[:id])
    @building_comment = BuildingComment.new
    @comments = @building.building_comments.order(created_at: :desc)
    @building_review = BuildingReview.new
    @user = User.find(@building.user.id)
    # descを使用してコメント作成順に表示させる
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    @building.update(building_params)
    flash[:notice] = '編集が完了しました！'
    redirect_to admin_area_path(@building.area.id)
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to admin_area_path(@building.area.id)
  end


  private
  def building_params
    params.require(:building).permit(:building_name,:introduction,:image,:area_id)
  end
end
