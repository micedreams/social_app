module LikesHelper
  def like_for_post(post)
    Like.where(user_id: @current_user.id, post_id: post.id).last
  end
end
