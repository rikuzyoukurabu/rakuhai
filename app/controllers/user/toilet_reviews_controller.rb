class User::ToiletReviewsController < ApplicationController
  before_action :authenticate_user!
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @toilet_review = ToiletReview.new(review_params)
    @toilet_review.user_id = current_user.id
    # @toilet_review.toilet_id = @toilet.id
    @toilet_review.save
    flash[:notice] = 'レビュー投稿が完了しました！'
    redirect_to toilet_path(@toilet)

  end
  
  private
  def review_params
    params.require(:toilet_review).permit(:toilet_id,:score)
  end
end
