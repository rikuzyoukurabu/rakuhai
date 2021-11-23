class Admin::ToiletCommentsController < ApplicationController
  before_action :authenticate_admin!
  def destroy
    @toilet = Toilet.find(params[:toilet_id])
    @toilet_comment = @toilet.toilet_comments.find(params[:id])
    @comments = @toilet.toilet_comments.order(created_at: :desc)
    @toilet_comment.destroy
    # redirect_to toilet_path(@toilet)
    flash[:notice] = '削除が完了しました！'
    render :index
  end
end
