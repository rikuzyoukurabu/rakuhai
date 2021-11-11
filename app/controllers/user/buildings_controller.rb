class User::BuildingsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
  end

  def show
    @building = Building.find(params[:id])
    @building_comment = BuildingComment.new
    @comments = @building.building_comments.order(created_at: :desc)
    # descを使用してコメント作成順に表示させる
  end

  def new
    @building = Building.new
    @area = Area.all
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      flash[:notice] = '投稿が完了しました！'
    redirect_to areas_path
    else
    render :new
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    @building.update(building_params)
    flash[:notice] = '編集が完了しました！'
    redirect_to areas_path
  end

  def destroy
    building = Building.find(params[:id])
    building.destroy
    redirect_to areas_path
  end

  private
  def building_params
    params.require(:building).permit(:building_name,:introduction,:image,:area_id)
  end
end
