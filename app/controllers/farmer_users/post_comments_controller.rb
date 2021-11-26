class FarmerUsers::PostCommentsController < ApplicationController
  before_action :authenticate_farmer_user!
  def create
    post = Post.find(params[:post_id])
    post_comment = current_farmer_user.post_comments.new(post_comment_params)
    post_comment.post_id = post.id
    post_comment.save
    redirect_to farmer_users_post_path(params[:post_id])
  end

  def destroy
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
