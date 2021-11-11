class User::ShopsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
  end

  def show
    @shop = Shop.find(params[:id])
    @shop_comment = ShopComment.new
    @comments = @shop.shop_comments.order(created_at: :desc)
    # descを使用してコメント作成順に表示させる
  end

  def new
    @shop = Shop.new
    @area = Area.all
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      flash[:notice] = '投稿が完了しました！'
    redirect_to areas_path
    else
    render :new
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    flash[:notice] = '編集が完了しました！'
    redirect_to areas_path
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to areas_path
  end

  private
  def shop_params
    params.require(:shop).permit(:shop_name,:introduction,:image,:area_id)
  end
end
