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
    if @shop.save
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
