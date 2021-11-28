class GeneralUsers::PostsController < ApplicationController

  before_action :authenticate_general_user!
  def index
    @post = Post.all
  end

  def show

    @post = Post.find(params[:id])
    # @post_comments = @post.comments
    @post_comment = PostComment.new #コメントのインスタンス変数を記述
  end

end
