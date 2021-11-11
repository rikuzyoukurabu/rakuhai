class User::ShopCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def create
    @shop = Shop.find(params[:shop_id])
    @shop_comment = ShopComment.new(shop_comment_params)
    @shop_comment.user_id = current_user.id
    @shop_comment.shop_id = @shop.id
    @comments = @shop.shop_comments.order(created_at: :desc)

    @shop_comment.save
    flash[:notice] = '投稿が完了しました！'
    # redirect_to toilet_path(@toilet)
    render :index

  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    @shop_comment = @shop.shop_comments.find(params[:id])
    @comments = @shop.shop_comments.order(created_at: :desc)
    @shop_comment.destroy
    # redirect_to toilet_path(@toilet)
    flash[:notice] = '削除が完了しました！'
    render :index

  end

  # def show
  #   @toilet = Toilet.find(params[:id])
  #   @user = User.find(params[:id])
  #   # @toilet_comments = ToiletComments.find(params[:id])
  # end

  def shop_comment_params
    params.require(:shop_comment).permit(:comment, :image)
  end
end
