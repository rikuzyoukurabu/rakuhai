class Admin::ShopsController < ApplicationController
  before_action :authenticate_admin!
  
  def show
    @shop = Shop.find(params[:id])
    @shop_comment = ShopComment.new
    @comments = @shop.shop_comments.order(created_at: :desc)
    @shop_review = ShopReview.new
    @user = User.find(@shop.user.id)
    # descを使用してコメント作成順に表示させる
  end
  
  def edit
    @shop = Shop.find(params[:id])
  end
  
  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    flash[:notice] = '編集が完了しました！'
    redirect_to admin_area_path(@shop.area.id)
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to admin_area_path(@shop.area.id)
  end


  private
  def shop_params
    params.require(:shop).permit(:shop_name,:introduction,:image,:area_id)
  end
end
