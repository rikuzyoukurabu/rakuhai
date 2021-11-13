class User::ShopReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @shop = Shop.find(params[:shop_id])
    @shop_review = ShopReview.new(review_params)
    @shop_review.user_id = current_user.id
    # @shop_review.shop_id = @shop.id
    @shop_review.save
    flash[:notice] = 'レビュー投稿が完了しました！'
    redirect_to shop_path(@shop)
  end

  private
  def review_params
    params.require(:shop_review).permit(:shop_id,:score)
  end
end
