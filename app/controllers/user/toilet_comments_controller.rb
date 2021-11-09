class User::ToiletCommentsController < ApplicationController

  def create
    @toilet = Toilet.find(params[:toilet_id])
    @toilet_comment = ToiletComment.new(toilet_comment_params)
    @toilet_comment.user_id = current_user.id
    @toilet_comment.toilet_id = @toilet.id
    @comments = @toilet.toilet_comments.order(created_at: :desc)

    @toilet_comment.save

    # redirect_to toilet_path(@toilet)
    render :index

  end

  def destroy
    @toilet = Toilet.find(params[:toilet_id])
    @toilet_comment = @toilet.toilet_comments.find(params[:id])
    @comments = @toilet.toilet_comments.order(created_at: :desc)
    @toilet_comment.destroy
    # redirect_to toilet_path(@toilet)
    render :index

  end

  # def show
  #   @toilet = Toilet.find(params[:id])
  #   @user = User.find(params[:id])
  #   # @toilet_comments = ToiletComments.find(params[:id])
  # end

  def toilet_comment_params
    params.require(:toilet_comment).permit(:comment, :image)
  end
end
