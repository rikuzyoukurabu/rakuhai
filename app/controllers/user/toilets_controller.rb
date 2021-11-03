class User::ToiletsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @toilet = Toilet.new
    @area = Area.all
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.save
    redirect_to areas_path
   
  end

  private
  def toilet_params
    params.require(:toilet).permit(:toilet_name,:introduction,:image,:area_id)
  end
end
