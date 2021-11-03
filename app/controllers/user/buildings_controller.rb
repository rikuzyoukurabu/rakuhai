class User::BuildingsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    @building = Building.new
    @area = Area.all
  end

  def create
    @building = Building.new(building_params)
    @building.save
    redirect_to areas_path
   
  end

  private
  def building_params
    params.require(:building).permit(:building_name,:introduction,:image,:area_id)
  end
end
