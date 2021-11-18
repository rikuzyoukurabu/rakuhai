class Admin::BuildingCommentsController < ApplicationController
    before_action :authenticate_admin!
  def destroy
    @building = Building.find(params[:building_id])
    @building_comment = @building.building_comments.find(params[:id])
    @comments = @building.building_comments.order(created_at: :desc)
    @building_comment.destroy
    flash[:notice] = '削除が完了しました！'
    render :index
  end
end
