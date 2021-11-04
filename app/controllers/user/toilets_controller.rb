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
    if @toilet.save
    redirect_to areas_path
    else
    render :new
    end
  end

  def edit
    @toilet = Toilet.find(params[:id])
  end

  def update
    @toilet = Toilet.find(params[:id])
    @toilet.update(toilet_params)
    redirect_to areas_path
  end
  
  def destroy
    toilet = Toilet.find(params[:id])
    toilet.destroy
    redirect_to areas_path
  end

  private
  def toilet_params
    params.require(:toilet).permit(:toilet_name,:introduction,:image,:area_id)
  end
end
