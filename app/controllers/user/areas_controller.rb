class User::AreasController < ApplicationController
  def index
    @areas = Area.all
    # @area = Area.find(params[:id])
  end

  def show
    @area = Area.find(params[:id])
    
    # @toilet = Toilet.find(params[:id])
    # @building = Toilet.find(params[:id])
    
  end
end
