class User::BuildingCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def create
    @building = Building.find(params[:building_id])
    @building_comment = BuildingComment.new(building_comment_params)
    @building_comment.user_id = current_user.id
    @building_comment.building_id = @building.id
    @comments = @building.building_comments.order(created_at: :desc)
    @building_comment.save

    flash[:notice] = '投稿が完了しました！'
    # redirect_to toilet_path(@toilet)
    render :index

  end

  def destroy
    @building = Building.find(params[:building_id])
    @building_comment = @building.building_comments.find(params[:id])
    @comments = @building.building_comments.order(created_at: :desc)
    @building_comment.destroy
    # redirect_to toilet_path(@toilet)
    flash[:notice] = '削除が完了しました！'
    render :index

  end

  # def show
  #   @toilet = Toilet.find(params[:id])
  #   @user = User.find(params[:id])
  #   # @toilet_comments = ToiletComments.find(params[:id])
  # end

  def building_comment_params
    params.require(:building_comment).permit(:comment, :image)
  end
end
