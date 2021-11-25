class FarmerUsers::PostsController < ApplicationController
  before_action :authenticate_farmer_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.farmer_user_id = current_farmer_user.id
    if @post.save
      redirect_to farmer_users_posts_path
    else
      render :new
    end
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])

    # コメントのインスタンス変数記述
    @post_comment = PostComment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to farmer_users_posts_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :image, :introduction)
  end
end
