class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    Like.create(user: current_user, post: post)

    redirect_back fallback_location: root_path
  end

  def destroy
    Like.find(params[:id]).destroy

    redirect_back fallback_location: root_path
  end
end
