class Admin::ShopCommentsController < ApplicationController
  before_action :authenticate_admin!
  def destroy
    @shop = Shop.find(params[:shop_id])
    @shop_comment = @shop.shop_comments.find(params[:id])
    @comments = @shop.shop_comments.order(created_at: :desc)
    @shop_comment.destroy
    # redirect_to toilet_path(@toilet)
    flash[:notice] = '削除が完了しました！'
    render :index
  end
end
