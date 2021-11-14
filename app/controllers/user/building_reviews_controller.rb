class User::BuildingReviewsController < ApplicationController
  before_action :authenticate_user!
  def create
    @building = Building.find(params[:building_id])
    @building_review = BuildingReview.new(review_params)
    @building_review.user_id = current_user.id
    # @toilet_review.toilet_id = @toilet.id
    @building_review.save
    flash[:notice] = 'レビュー投稿が完了しました！'
    redirect_to area_path(@building.area.id)
  end

  private
  def review_params
    params.require(:building_review).permit(:building_id,:score)
  end
end
