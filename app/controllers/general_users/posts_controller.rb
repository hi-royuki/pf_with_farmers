class GeneralUsers::PostsController < ApplicationController

  before_action :authenticate_general_user!
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show

    @post = Post.find(params[:id])
    @post_comment = PostComment.new #コメントのインスタンス変数を記述
  end

end
