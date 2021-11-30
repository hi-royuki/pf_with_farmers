class FarmerUsers::PostCommentsController < ApplicationController
  before_action :authenticate_farmer_user!

  def create
    post = Post.find(params[:post_id])
    # comment = current_farmer_user.post_comments.new(post_comment_params)
    comment = PostComment.new(post_comment_params)
    comment.farmer_user_id = current_farmer_user.id
    comment.general_user_id = current_general_user.id
    comment.post_id = post.id
    comment.save
    redirect_to farmer_users_post_path(params[:post_id])
  end

  def destroy
    PostComment.find_by(id: params[:id]).destroy
    redirect_to farmer_users_post_path(params[:post_id])
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
