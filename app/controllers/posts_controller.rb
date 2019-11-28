class PostsController < ApplicationController
  def index
    @user_name = current_user.name
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
