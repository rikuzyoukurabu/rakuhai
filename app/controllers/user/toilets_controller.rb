class User::ToiletsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @toilet = Toilet.find(params[:id])
    @toilet_comment = ToiletComment.new
    @comments = @toilet.toilet_comments.order(created_at: :desc)
    @toilet_review = ToiletReview.new
    @user = User.find(@toilet.user.id)
    # descを使用してコメント作成順に表示させる
  end

  def new
    @toilet = Toilet.new
    @area = Area.all
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user_id = current_user.id
    if @toilet.save
      flash[:notice] = '投稿が完了しました！'
      redirect_to area_path(@toilet.area.id)
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
    flash[:notice] = '編集が完了しました！'
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
