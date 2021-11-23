class Admin::AreasController < ApplicationController
  before_action :authenticate_admin!
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end


  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      flash[:notice] = '投稿が完了しました！'
      redirect_to admin_areas_path
    else
      render :new
    end
  end

  private
  def area_params
    params.require(:area).permit(:area_name,:area_id)
  end
end
