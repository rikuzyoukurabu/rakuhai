class User::ToiletCommentsController < ApplicationController
  
  def create
  end
  
  def destroy
  end
  
  def index
    @toilet = Toilet.find(params[:id])
    @toilet_comments = ToiletComments.find(params[:id])
  end
  
  def show
    @toilet = Toilet.find(params[:id])
  end
end
