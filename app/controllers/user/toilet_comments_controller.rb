class User::ToiletCommentsController < ApplicationController
  
  def create
    @toilet = Toilet.find(params[:toilet_id])
    @toilet_comment = ToiletComment.new(toilet_comment_params)
    @toilet_comment.user_id = current_user.id
    @toilet_comment.toilet_id = @toilet.id
    @toilet_comment.save
    redirect_to areas_path
    
  end
  
  def destroy
  end
  
  def index
    @toilet = Toilet.find(params[:id])
    @toilet_comments = ToiletComments.find(params[:id])
  end
  
  def show
    @toilet = Toilet.find(params[:id])
    @user = User.find(params[:id])
  end
  
  def toilet_comment_params
    params.require(:toilet_comment).permit(:comment)
  end
end
