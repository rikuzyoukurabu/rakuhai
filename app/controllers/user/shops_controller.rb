class User::ShopsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @shop = Shop.new
    @area = Area.all
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to areas_path
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  private
  def shop_params
    params.require(:shop).permit(:shop_name,:introduction,:image,:area_id)
  end
end
