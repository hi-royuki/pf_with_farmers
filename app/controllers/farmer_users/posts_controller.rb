class FarmerUsers::PostsController < ApplicationController
  before_action :authenticate_farmer_user!
  def new

  end

  def create
    @post = Post.new(post_params)
    @post.farmer_user_id = current_farmer_user.id
    if @post.save
      redirect_to farmer_users_posts_path
    else
      @posts = Post.all.order(created_at: :desc)
      render action: :index
    end
  end

  def index
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)

  end

  def show
    @post = Post.find(params[:id])
    # @post_comments = @post.comments
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
